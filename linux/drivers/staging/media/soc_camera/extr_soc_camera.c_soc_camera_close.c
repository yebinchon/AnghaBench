
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_camera_host {TYPE_2__* ops; int host_lock; } ;
struct soc_camera_device {int pdev; TYPE_1__* vdev; int use_count; struct file* streamer; int vb2_vidq; int parent; } ;
struct file {struct soc_camera_device* private_data; } ;
struct TYPE_4__ {int owner; scalar_t__ init_videobuf2; } ;
struct TYPE_3__ {int dev; } ;


 int __soc_camera_power_off (struct soc_camera_device*) ;
 int dev_dbg (int ,char*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_suspend (int *) ;
 int soc_camera_remove_device (struct soc_camera_device*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 int vb2_queue_release (int *) ;

__attribute__((used)) static int soc_camera_close(struct file *file)
{
 struct soc_camera_device *icd = file->private_data;
 struct soc_camera_host *ici = to_soc_camera_host(icd->parent);

 mutex_lock(&ici->host_lock);
 if (icd->streamer == file) {
  if (ici->ops->init_videobuf2)
   vb2_queue_release(&icd->vb2_vidq);
  icd->streamer = ((void*)0);
 }
 icd->use_count--;
 if (!icd->use_count) {
  pm_runtime_suspend(&icd->vdev->dev);
  pm_runtime_disable(&icd->vdev->dev);

  __soc_camera_power_off(icd);

  soc_camera_remove_device(icd);
 }

 mutex_unlock(&ici->host_lock);

 module_put(ici->ops->owner);

 dev_dbg(icd->pdev, "camera device close\n");

 return 0;
}
