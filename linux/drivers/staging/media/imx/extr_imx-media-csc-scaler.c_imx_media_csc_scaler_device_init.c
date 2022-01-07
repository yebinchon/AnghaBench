
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int * lock; } ;
struct imx_media_video_dev {int list; struct video_device* vfd; } ;
struct ipu_csc_scaler_priv {struct imx_media_video_dev vdev; int m2m_dev; int mutex; int dev; struct imx_media_dev* md; } ;
struct TYPE_2__ {int dev; } ;
struct imx_media_dev {int v4l2_dev; TYPE_1__ md; } ;


 int ENOMEM ;
 struct imx_media_video_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct video_device ipu_csc_scaler_videodev_template ;
 int kfree (struct ipu_csc_scaler_priv*) ;
 struct ipu_csc_scaler_priv* kzalloc (int,int ) ;
 int m2m_ops ;
 int mutex_init (int *) ;
 int v4l2_err (int *,char*,int) ;
 int v4l2_m2m_init (int *) ;
 struct video_device* video_device_alloc () ;
 int video_set_drvdata (struct video_device*,struct ipu_csc_scaler_priv*) ;

struct imx_media_video_dev *
imx_media_csc_scaler_device_init(struct imx_media_dev *md)
{
 struct ipu_csc_scaler_priv *priv;
 struct video_device *vfd;
 int ret;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return ERR_PTR(-ENOMEM);

 priv->md = md;
 priv->dev = md->md.dev;

 mutex_init(&priv->mutex);

 vfd = video_device_alloc();
 if (!vfd) {
  ret = -ENOMEM;
  goto err_vfd;
 }

 *vfd = ipu_csc_scaler_videodev_template;
 vfd->lock = &priv->mutex;
 priv->vdev.vfd = vfd;

 INIT_LIST_HEAD(&priv->vdev.list);

 video_set_drvdata(vfd, priv);

 priv->m2m_dev = v4l2_m2m_init(&m2m_ops);
 if (IS_ERR(priv->m2m_dev)) {
  ret = PTR_ERR(priv->m2m_dev);
  v4l2_err(&md->v4l2_dev, "Failed to init mem2mem device: %d\n",
    ret);
  goto err_m2m;
 }

 return &priv->vdev;

err_m2m:
 video_set_drvdata(vfd, ((void*)0));
err_vfd:
 kfree(priv);
 return ERR_PTR(ret);
}
