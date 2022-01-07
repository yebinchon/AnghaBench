
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_async_notifier {int dummy; } ;
struct imx_media_dev {int mutex; int m2m_vdev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int imx_media_csc_scaler_device_init (struct imx_media_dev*) ;
 int imx_media_csc_scaler_device_register (int ) ;
 int imx_media_probe_complete (struct v4l2_async_notifier*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx_media_dev* notifier2dev (struct v4l2_async_notifier*) ;

__attribute__((used)) static int imx6_media_probe_complete(struct v4l2_async_notifier *notifier)
{
 struct imx_media_dev *imxmd = notifier2dev(notifier);
 int ret;


 ret = imx_media_probe_complete(notifier);
 if (ret)
  return ret;

 mutex_lock(&imxmd->mutex);

 imxmd->m2m_vdev = imx_media_csc_scaler_device_init(imxmd);
 if (IS_ERR(imxmd->m2m_vdev)) {
  ret = PTR_ERR(imxmd->m2m_vdev);
  goto unlock;
 }

 ret = imx_media_csc_scaler_device_register(imxmd->m2m_vdev);
unlock:
 mutex_unlock(&imxmd->mutex);
 return ret;
}
