
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int entity; } ;
struct imx_media_video_dev {int dummy; } ;
struct TYPE_2__ {struct video_device* vfd; } ;
struct capture_priv {int mutex; TYPE_1__ vdev; } ;


 int media_entity_cleanup (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct capture_priv* to_capture_priv (struct imx_media_video_dev*) ;
 scalar_t__ video_is_registered (struct video_device*) ;
 int video_unregister_device (struct video_device*) ;

void imx_media_capture_device_unregister(struct imx_media_video_dev *vdev)
{
 struct capture_priv *priv = to_capture_priv(vdev);
 struct video_device *vfd = priv->vdev.vfd;

 mutex_lock(&priv->mutex);

 if (video_is_registered(vfd)) {
  video_unregister_device(vfd);
  media_entity_cleanup(&vfd->entity);
 }

 mutex_unlock(&priv->mutex);
}
