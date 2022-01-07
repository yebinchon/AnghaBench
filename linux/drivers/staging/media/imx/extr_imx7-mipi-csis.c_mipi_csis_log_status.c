
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct csi_state {int flags; int lock; scalar_t__ debug; } ;


 int ST_POWERED ;
 int mipi_csis_dump_regs (struct csi_state*) ;
 int mipi_csis_log_counters (struct csi_state*,int) ;
 struct csi_state* mipi_sd_to_csis_state (struct v4l2_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mipi_csis_log_status(struct v4l2_subdev *mipi_sd)
{
 struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);

 mutex_lock(&state->lock);
 mipi_csis_log_counters(state, 1);
 if (state->debug && (state->flags & ST_POWERED))
  mipi_csis_dump_regs(state);
 mutex_unlock(&state->lock);

 return 0;
}
