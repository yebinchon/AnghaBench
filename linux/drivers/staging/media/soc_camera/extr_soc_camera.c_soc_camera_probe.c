
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_host_desc {int (* add_device ) (struct soc_camera_device*) ;int (* del_device ) (struct soc_camera_device*) ;scalar_t__ board_info; scalar_t__ module_name; } ;
struct soc_camera_host {int host_lock; } ;
struct soc_camera_device {int ctrl_handler; int * vdev; int pdev; } ;
struct soc_camera_desc {struct soc_camera_host_desc host_desc; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int owner; } ;


 int EINVAL ;
 int ENODEV ;
 int EPROBE_DEFER ;
 int dev_get_drvdata (struct device*) ;
 int dev_info (int ,char*,int ) ;
 int dev_name (int ) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_module (scalar_t__) ;
 int soc_camera_clock_start (struct soc_camera_host*) ;
 int soc_camera_clock_stop (struct soc_camera_host*) ;
 int soc_camera_i2c_free (struct soc_camera_device*) ;
 int soc_camera_i2c_init (struct soc_camera_device*,struct soc_camera_desc*) ;
 int soc_camera_probe_finish (struct soc_camera_device*) ;
 int stub1 (struct soc_camera_device*) ;
 int stub2 (struct soc_camera_device*) ;
 int stub3 (struct soc_camera_device*) ;
 struct device* to_soc_camera_control (struct soc_camera_device*) ;
 struct soc_camera_desc* to_soc_camera_desc (struct soc_camera_device*) ;
 int try_module_get (int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_ctrl_handler_init (int *,int) ;
 int video_dev_create (struct soc_camera_device*) ;
 int video_device_release (int *) ;

__attribute__((used)) static int soc_camera_probe(struct soc_camera_host *ici,
       struct soc_camera_device *icd)
{
 struct soc_camera_desc *sdesc = to_soc_camera_desc(icd);
 struct soc_camera_host_desc *shd = &sdesc->host_desc;
 struct device *control = ((void*)0);
 int ret;

 dev_info(icd->pdev, "Probing %s\n", dev_name(icd->pdev));
 ret = v4l2_ctrl_handler_init(&icd->ctrl_handler, 16);
 if (ret < 0)
  return ret;


 ret = video_dev_create(icd);
 if (ret < 0)
  goto evdc;
 if (shd->board_info) {
  ret = soc_camera_i2c_init(icd, sdesc);
  if (ret < 0 && ret != -EPROBE_DEFER)
   goto eadd;
 } else if (!shd->add_device || !shd->del_device) {
  ret = -EINVAL;
  goto eadd;
 } else {
  ret = soc_camera_clock_start(ici);
  if (ret < 0)
   goto eadd;

  if (shd->module_name)
   ret = request_module(shd->module_name);

  ret = shd->add_device(icd);
  if (ret < 0)
   goto eadddev;





  control = to_soc_camera_control(icd);
  if (!control || !control->driver || !dev_get_drvdata(control) ||
      !try_module_get(control->driver->owner)) {
   shd->del_device(icd);
   ret = -ENODEV;
   goto enodrv;
  }
 }

 mutex_lock(&ici->host_lock);
 ret = soc_camera_probe_finish(icd);
 mutex_unlock(&ici->host_lock);
 if (ret < 0)
  goto efinish;

 return 0;

efinish:
 if (shd->board_info) {
  soc_camera_i2c_free(icd);
 } else {
  shd->del_device(icd);
  module_put(control->driver->owner);
enodrv:
eadddev:
  soc_camera_clock_stop(ici);
 }
eadd:
 if (icd->vdev) {
  video_device_release(icd->vdev);
  icd->vdev = ((void*)0);
 }
evdc:
 v4l2_ctrl_handler_free(&icd->ctrl_handler);
 return ret;
}
