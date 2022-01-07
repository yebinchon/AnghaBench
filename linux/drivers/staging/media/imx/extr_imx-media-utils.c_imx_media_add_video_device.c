
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_media_video_dev {int list; } ;
struct imx_media_dev {int mutex; int vdev_list; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void imx_media_add_video_device(struct imx_media_dev *imxmd,
    struct imx_media_video_dev *vdev)
{
 mutex_lock(&imxmd->mutex);

 list_add_tail(&vdev->list, &imxmd->vdev_list);

 mutex_unlock(&imxmd->mutex);
}
