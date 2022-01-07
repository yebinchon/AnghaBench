
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct prp_priv {int stream_count; int lock; int src_sd; int sink_sd_prpvf; int sink_sd_prpenc; } ;
struct imx_ic_priv {int ipu_dev; struct prp_priv* task_priv; } ;


 int ENOIOCTLCMD ;
 int EPIPE ;
 int dev_dbg (int ,char*,int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prp_start (struct prp_priv*) ;
 int prp_stop (struct prp_priv*) ;
 int s_stream ;
 struct imx_ic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 int video ;

__attribute__((used)) static int prp_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct imx_ic_priv *ic_priv = v4l2_get_subdevdata(sd);
 struct prp_priv *priv = ic_priv->task_priv;
 int ret = 0;

 mutex_lock(&priv->lock);

 if (!priv->src_sd || (!priv->sink_sd_prpenc && !priv->sink_sd_prpvf)) {
  ret = -EPIPE;
  goto out;
 }





 if (priv->stream_count != !enable)
  goto update_count;

 dev_dbg(ic_priv->ipu_dev, "%s: stream %s\n", sd->name,
  enable ? "ON" : "OFF");

 if (enable)
  ret = prp_start(priv);
 else
  prp_stop(priv);
 if (ret)
  goto out;


 ret = v4l2_subdev_call(priv->src_sd, video, s_stream, enable);
 ret = (ret && ret != -ENOIOCTLCMD) ? ret : 0;
 if (ret) {
  if (enable)
   prp_stop(priv);
  goto out;
 }

update_count:
 priv->stream_count += enable ? 1 : -1;
 if (priv->stream_count < 0)
  priv->stream_count = 0;
out:
 mutex_unlock(&priv->lock);
 return ret;
}
