
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int * queue; int * lock; int name; } ;
struct v4l2_subdev {char* name; } ;
struct imx_media_video_dev {int list; struct video_device* vfd; } ;
struct device {int dummy; } ;
struct capture_priv {int src_sd_pad; struct imx_media_video_dev vdev; int ctrl_hdlr; int q; int mutex; int q_lock; struct device* dev; struct v4l2_subdev* src_sd; } ;


 int ENOMEM ;
 struct imx_media_video_dev* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct video_device capture_videodev ;
 struct capture_priv* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;
 int v4l2_ctrl_handler_init (int *,int ) ;
 struct video_device* video_device_alloc () ;
 int video_set_drvdata (struct video_device*,struct capture_priv*) ;

struct imx_media_video_dev *
imx_media_capture_device_init(struct device *dev, struct v4l2_subdev *src_sd,
         int pad)
{
 struct capture_priv *priv;
 struct video_device *vfd;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return ERR_PTR(-ENOMEM);

 priv->src_sd = src_sd;
 priv->src_sd_pad = pad;
 priv->dev = dev;

 mutex_init(&priv->mutex);
 spin_lock_init(&priv->q_lock);

 snprintf(capture_videodev.name, sizeof(capture_videodev.name),
   "%s capture", src_sd->name);

 vfd = video_device_alloc();
 if (!vfd)
  return ERR_PTR(-ENOMEM);

 *vfd = capture_videodev;
 vfd->lock = &priv->mutex;
 vfd->queue = &priv->q;
 priv->vdev.vfd = vfd;

 INIT_LIST_HEAD(&priv->vdev.list);

 video_set_drvdata(vfd, priv);

 v4l2_ctrl_handler_init(&priv->ctrl_hdlr, 0);

 return &priv->vdev;
}
