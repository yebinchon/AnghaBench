
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct csi_priv {int stream_count; int lock; int dev; int sink; int src_sd; } ;


 int EPIPE ;
 int csi_start (struct csi_priv*) ;
 int csi_stop (struct csi_priv*) ;
 int dev_dbg (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct csi_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csi_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct csi_priv *priv = v4l2_get_subdevdata(sd);
 int ret = 0;

 mutex_lock(&priv->lock);

 if (!priv->src_sd || !priv->sink) {
  ret = -EPIPE;
  goto out;
 }





 if (priv->stream_count != !enable)
  goto update_count;

 if (enable) {
  dev_dbg(priv->dev, "stream ON\n");
  ret = csi_start(priv);
  if (ret)
   goto out;
 } else {
  dev_dbg(priv->dev, "stream OFF\n");
  csi_stop(priv);
 }

update_count:
 priv->stream_count += enable ? 1 : -1;
 if (priv->stream_count < 0)
  priv->stream_count = 0;
out:
 mutex_unlock(&priv->lock);
 return ret;
}
