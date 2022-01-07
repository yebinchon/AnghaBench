
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct gasket_dev {scalar_t__ status; int dev; int dev_info; } ;


 int CAP_SYS_ADMIN ;
 scalar_t__ GASKET_STATUS_ALIVE ;
 int VM_EXEC ;
 int VM_READ ;
 int VM_WRITE ;
 scalar_t__ capable (int ) ;
 int dev_dbg (int ,char*,...) ;
 int gasket_owned_by_current_tgid (int *) ;

__attribute__((used)) static bool gasket_mmap_has_permissions(struct gasket_dev *gasket_dev,
     struct vm_area_struct *vma,
     int bar_permissions)
{
 int requested_permissions;

 if (capable(CAP_SYS_ADMIN))
  return 1;


 if (gasket_dev->status != GASKET_STATUS_ALIVE) {
  dev_dbg(gasket_dev->dev, "Device is dead.\n");
  return 0;
 }


 requested_permissions =
  (vma->vm_flags & (VM_WRITE | VM_READ | VM_EXEC));
 if (requested_permissions & ~(bar_permissions)) {
  dev_dbg(gasket_dev->dev,
   "Attempting to map a region with requested permissions "
   "0x%x, but region has permissions 0x%x.\n",
   requested_permissions, bar_permissions);
  return 0;
 }


 if ((vma->vm_flags & VM_WRITE) &&
     !gasket_owned_by_current_tgid(&gasket_dev->dev_info)) {
  dev_dbg(gasket_dev->dev,
   "Attempting to mmap a region for write without owning device.\n");
  return 0;
 }

 return 1;
}
