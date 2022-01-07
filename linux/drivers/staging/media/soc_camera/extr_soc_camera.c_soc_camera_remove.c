
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct soc_camera_device {TYPE_2__* sasc; int * clk; scalar_t__ num_user_formats; struct video_device* vdev; int ctrl_handler; } ;
struct TYPE_3__ {int (* del_device ) (struct soc_camera_device*) ;scalar_t__ board_info; } ;
struct soc_camera_desc {TYPE_1__ host_desc; } ;
struct device_driver {int owner; } ;
struct device {struct device_driver* driver; } ;
struct TYPE_4__ {int pdev; } ;


 int module_put (int ) ;
 int platform_device_unregister (int ) ;
 int soc_camera_free_user_formats (struct soc_camera_device*) ;
 int soc_camera_i2c_free (struct soc_camera_device*) ;
 int stub1 (struct soc_camera_device*) ;
 struct device* to_soc_camera_control (struct soc_camera_device*) ;
 struct soc_camera_desc* to_soc_camera_desc (struct soc_camera_device*) ;
 int v4l2_clk_unregister (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int video_unregister_device (struct video_device*) ;

__attribute__((used)) static int soc_camera_remove(struct soc_camera_device *icd)
{
 struct soc_camera_desc *sdesc = to_soc_camera_desc(icd);
 struct video_device *vdev = icd->vdev;

 v4l2_ctrl_handler_free(&icd->ctrl_handler);
 if (vdev) {
  video_unregister_device(vdev);
  icd->vdev = ((void*)0);
 }

 if (sdesc->host_desc.board_info) {
  soc_camera_i2c_free(icd);
 } else {
  struct device *dev = to_soc_camera_control(icd);
  struct device_driver *drv = dev ? dev->driver : ((void*)0);
  if (drv) {
   sdesc->host_desc.del_device(icd);
   module_put(drv->owner);
  }
 }

 if (icd->num_user_formats)
  soc_camera_free_user_formats(icd);

 if (icd->clk) {

  v4l2_clk_unregister(icd->clk);
  icd->clk = ((void*)0);
 }

 if (icd->sasc)
  platform_device_unregister(icd->sasc->pdev);

 return 0;
}
