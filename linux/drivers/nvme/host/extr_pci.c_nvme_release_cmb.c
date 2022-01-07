
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* device; } ;
struct nvme_dev {scalar_t__ cmb_size; TYPE_2__ ctrl; } ;
struct TYPE_6__ {int attr; } ;
struct TYPE_4__ {int kobj; } ;


 TYPE_3__ dev_attr_cmb ;
 int sysfs_remove_file_from_group (int *,int *,int *) ;

__attribute__((used)) static inline void nvme_release_cmb(struct nvme_dev *dev)
{
 if (dev->cmb_size) {
  sysfs_remove_file_from_group(&dev->ctrl.device->kobj,
          &dev_attr_cmb.attr, ((void*)0));
  dev->cmb_size = 0;
 }
}
