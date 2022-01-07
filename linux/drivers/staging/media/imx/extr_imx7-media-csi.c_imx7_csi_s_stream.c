
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct imx7_csi {int is_streaming; int lock; int src_sd; int sink; } ;


 int EPIPE ;
 int imx7_csi_streaming_start (struct imx7_csi*) ;
 int imx7_csi_streaming_stop (struct imx7_csi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_stream ;
 struct imx7_csi* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 int video ;

__attribute__((used)) static int imx7_csi_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct imx7_csi *csi = v4l2_get_subdevdata(sd);
 int ret = 0;

 mutex_lock(&csi->lock);

 if (!csi->src_sd || !csi->sink) {
  ret = -EPIPE;
  goto out_unlock;
 }

 if (csi->is_streaming == !!enable)
  goto out_unlock;

 if (enable) {
  ret = v4l2_subdev_call(csi->src_sd, video, s_stream, 1);
  if (ret < 0)
   goto out_unlock;

  ret = imx7_csi_streaming_start(csi);
  if (ret < 0) {
   v4l2_subdev_call(csi->src_sd, video, s_stream, 0);
   goto out_unlock;
  }
 } else {
  imx7_csi_streaming_stop(csi);

  v4l2_subdev_call(csi->src_sd, video, s_stream, 0);
 }

 csi->is_streaming = !!enable;

out_unlock:
 mutex_unlock(&csi->lock);

 return ret;
}
