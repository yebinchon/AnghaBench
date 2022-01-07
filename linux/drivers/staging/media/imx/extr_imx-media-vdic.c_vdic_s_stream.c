
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdic_priv {int stream_count; int lock; int ipu_dev; int src; scalar_t__ csi_direct; int sink_sd; } ;
struct v4l2_subdev {int name; } ;


 int ENOIOCTLCMD ;
 int EPIPE ;
 int dev_dbg (int ,char*,int ,char*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_stream ;
 struct vdic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;
 int vdic_start (struct vdic_priv*) ;
 int vdic_stop (struct vdic_priv*) ;
 int video ;

__attribute__((used)) static int vdic_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct vdic_priv *priv = v4l2_get_subdevdata(sd);
 struct v4l2_subdev *src_sd = ((void*)0);
 int ret = 0;

 mutex_lock(&priv->lock);

 if (!priv->src || !priv->sink_sd) {
  ret = -EPIPE;
  goto out;
 }

 if (priv->csi_direct)
  src_sd = media_entity_to_v4l2_subdev(priv->src);





 if (priv->stream_count != !enable)
  goto update_count;

 dev_dbg(priv->ipu_dev, "%s: stream %s\n", sd->name,
  enable ? "ON" : "OFF");

 if (enable)
  ret = vdic_start(priv);
 else
  vdic_stop(priv);
 if (ret)
  goto out;

 if (src_sd) {

  ret = v4l2_subdev_call(src_sd, video, s_stream, enable);
  ret = (ret && ret != -ENOIOCTLCMD) ? ret : 0;
  if (ret) {
   if (enable)
    vdic_stop(priv);
   goto out;
  }
 }

update_count:
 priv->stream_count += enable ? 1 : -1;
 if (priv->stream_count < 0)
  priv->stream_count = 0;
out:
 mutex_unlock(&priv->lock);
 return ret;
}
