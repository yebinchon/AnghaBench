
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_2__ {struct video_device* vfd; } ;
struct ipu_csc_scaler_priv {int mutex; TYPE_1__ vdev; } ;
struct imx_media_video_dev {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipu_csc_scaler_priv* vdev_to_priv (struct imx_media_video_dev*) ;
 int video_unregister_device (struct video_device*) ;

void imx_media_csc_scaler_device_unregister(struct imx_media_video_dev *vdev)
{
 struct ipu_csc_scaler_priv *priv = vdev_to_priv(vdev);
 struct video_device *vfd = priv->vdev.vfd;

 mutex_lock(&priv->mutex);

 video_unregister_device(vfd);

 mutex_unlock(&priv->mutex);
}
