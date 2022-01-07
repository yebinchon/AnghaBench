
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int release; int * parent; int * bus; } ;
struct ntb_dev {TYPE_2__ dev; int ctx_lock; int * ctx_ops; int * ctx; TYPE_1__* pdev; int released; int ops; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_register (TYPE_2__*) ;
 int init_completion (int *) ;
 int ntb_bus ;
 int ntb_dev_ops_is_valid (int ) ;
 int ntb_dev_release ;
 int pci_name (TYPE_1__*) ;
 int spin_lock_init (int *) ;

int ntb_register_device(struct ntb_dev *ntb)
{
 if (!ntb)
  return -EINVAL;
 if (!ntb->pdev)
  return -EINVAL;
 if (!ntb->ops)
  return -EINVAL;
 if (!ntb_dev_ops_is_valid(ntb->ops))
  return -EINVAL;

 init_completion(&ntb->released);

 ntb->dev.bus = &ntb_bus;
 ntb->dev.parent = &ntb->pdev->dev;
 ntb->dev.release = ntb_dev_release;
 dev_set_name(&ntb->dev, "%s", pci_name(ntb->pdev));

 ntb->ctx = ((void*)0);
 ntb->ctx_ops = ((void*)0);
 spin_lock_init(&ntb->ctx_lock);

 return device_register(&ntb->dev);
}
