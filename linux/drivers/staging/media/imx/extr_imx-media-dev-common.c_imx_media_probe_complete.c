
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_async_notifier {int dummy; } ;
struct imx_media_dev {int md; int mutex; int v4l2_dev; } ;


 int imx_media_create_links (struct v4l2_async_notifier*) ;
 int imx_media_create_pad_vdev_lists (struct imx_media_dev*) ;
 int media_device_register (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx_media_dev* notifier2dev (struct v4l2_async_notifier*) ;
 int v4l2_device_register_subdev_nodes (int *) ;

int imx_media_probe_complete(struct v4l2_async_notifier *notifier)
{
 struct imx_media_dev *imxmd = notifier2dev(notifier);
 int ret;

 mutex_lock(&imxmd->mutex);

 ret = imx_media_create_links(notifier);
 if (ret)
  goto unlock;

 ret = imx_media_create_pad_vdev_lists(imxmd);
 if (ret)
  goto unlock;

 ret = v4l2_device_register_subdev_nodes(&imxmd->v4l2_dev);
unlock:
 mutex_unlock(&imxmd->mutex);
 if (ret)
  return ret;

 return media_device_register(&imxmd->md);
}
