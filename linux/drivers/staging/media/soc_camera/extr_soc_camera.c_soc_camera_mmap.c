
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct soc_camera_host {int host_lock; } ;
struct soc_camera_device {int pdev; int vb2_vidq; struct file* streamer; int parent; } ;
struct file {struct soc_camera_device* private_data; } ;


 int EBUSY ;
 int ERESTARTSYS ;
 int dev_dbg (int ,char*,...) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 int vb2_mmap (int *,struct vm_area_struct*) ;

__attribute__((used)) static int soc_camera_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct soc_camera_device *icd = file->private_data;
 struct soc_camera_host *ici = to_soc_camera_host(icd->parent);
 int err;

 dev_dbg(icd->pdev, "mmap called, vma=%p\n", vma);

 if (icd->streamer != file)
  return -EBUSY;

 if (mutex_lock_interruptible(&ici->host_lock))
  return -ERESTARTSYS;
 err = vb2_mmap(&icd->vb2_vidq, vma);
 mutex_unlock(&ici->host_lock);

 dev_dbg(icd->pdev, "vma start=0x%08lx, size=%ld, ret=%d\n",
  (unsigned long)vma->vm_start,
  (unsigned long)vma->vm_end - (unsigned long)vma->vm_start,
  err);

 return err;
}
