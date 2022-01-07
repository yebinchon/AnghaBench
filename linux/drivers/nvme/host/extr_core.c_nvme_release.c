
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_ns {TYPE_2__* ctrl; } ;
struct gendisk {struct nvme_ns* private_data; } ;
typedef int fmode_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int module; } ;


 int module_put (int ) ;
 int nvme_put_ns (struct nvme_ns*) ;

__attribute__((used)) static void nvme_release(struct gendisk *disk, fmode_t mode)
{
 struct nvme_ns *ns = disk->private_data;

 module_put(ns->ctrl->ops->module);
 nvme_put_ns(ns);
}
