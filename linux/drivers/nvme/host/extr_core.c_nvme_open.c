
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvme_ns {TYPE_4__* ctrl; int kref; TYPE_2__* head; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_8__ {TYPE_3__* ops; } ;
struct TYPE_7__ {int module; } ;
struct TYPE_6__ {int disk; } ;
struct TYPE_5__ {struct nvme_ns* private_data; } ;


 int ENXIO ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int kref_get_unless_zero (int *) ;
 int nvme_put_ns (struct nvme_ns*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int nvme_open(struct block_device *bdev, fmode_t mode)
{
 struct nvme_ns *ns = bdev->bd_disk->private_data;






 if (!kref_get_unless_zero(&ns->kref))
  goto fail;
 if (!try_module_get(ns->ctrl->ops->module))
  goto fail_put_ns;

 return 0;

fail_put_ns:
 nvme_put_ns(ns);
fail:
 return -ENXIO;
}
