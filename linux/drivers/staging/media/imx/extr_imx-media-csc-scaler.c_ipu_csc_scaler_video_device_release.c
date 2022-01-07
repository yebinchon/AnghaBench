
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct ipu_csc_scaler_priv {int m2m_dev; } ;


 int kfree (struct ipu_csc_scaler_priv*) ;
 int v4l2_m2m_release (int ) ;
 int video_device_release (struct video_device*) ;
 struct ipu_csc_scaler_priv* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static void ipu_csc_scaler_video_device_release(struct video_device *vdev)
{
 struct ipu_csc_scaler_priv *priv = video_get_drvdata(vdev);

 v4l2_m2m_release(priv->m2m_dev);
 video_device_release(vdev);
 kfree(priv);
}
