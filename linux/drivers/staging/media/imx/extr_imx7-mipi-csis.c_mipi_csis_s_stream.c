
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct csi_state {int flags; TYPE_1__* pdev; int lock; scalar_t__ debug; int src_sd; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int ST_STREAMING ;
 int ST_SUSPENDED ;
 int core ;
 int mipi_csis_clear_counters (struct csi_state*) ;
 int mipi_csis_log_counters (struct csi_state*,int) ;
 int mipi_csis_start_stream (struct csi_state*) ;
 int mipi_csis_stop_stream (struct csi_state*) ;
 struct csi_state* mipi_sd_to_csis_state (struct v4l2_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int s_power ;
 int s_stream ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 int video ;

__attribute__((used)) static int mipi_csis_s_stream(struct v4l2_subdev *mipi_sd, int enable)
{
 struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);
 int ret = 0;

 if (enable) {
  mipi_csis_clear_counters(state);
  ret = pm_runtime_get_sync(&state->pdev->dev);
  if (ret < 0) {
   pm_runtime_put_noidle(&state->pdev->dev);
   return ret;
  }
  ret = v4l2_subdev_call(state->src_sd, core, s_power, 1);
  if (ret < 0)
   return ret;
 }

 mutex_lock(&state->lock);
 if (enable) {
  if (state->flags & ST_SUSPENDED) {
   ret = -EBUSY;
   goto unlock;
  }

  mipi_csis_start_stream(state);
  ret = v4l2_subdev_call(state->src_sd, video, s_stream, 1);
  if (ret < 0)
   goto unlock;

  mipi_csis_log_counters(state, 1);

  state->flags |= ST_STREAMING;
 } else {
  v4l2_subdev_call(state->src_sd, video, s_stream, 0);
  ret = v4l2_subdev_call(state->src_sd, core, s_power, 1);
  mipi_csis_stop_stream(state);
  state->flags &= ~ST_STREAMING;
  if (state->debug)
   mipi_csis_log_counters(state, 1);
 }

unlock:
 mutex_unlock(&state->lock);
 if (!enable)
  pm_runtime_put(&state->pdev->dev);

 return ret;
}
