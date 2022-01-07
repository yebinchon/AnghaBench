
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rio_dev {int pef; TYPE_2__* net; TYPE_1__* rswitch; int net_list; int global_list; int dev; int state; } ;
struct TYPE_4__ {int switches; int devices; } ;
struct TYPE_3__ {int node; } ;


 int RIO_DEVICE_RUNNING ;
 int RIO_PEF_SWITCH ;
 int atomic_set (int *,int ) ;
 int device_register (int *) ;
 int list_add_tail (int *,int *) ;
 int rio_devices ;
 int rio_global_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int rio_add_device(struct rio_dev *rdev)
{
 int err;

 atomic_set(&rdev->state, RIO_DEVICE_RUNNING);
 err = device_register(&rdev->dev);
 if (err)
  return err;

 spin_lock(&rio_global_list_lock);
 list_add_tail(&rdev->global_list, &rio_devices);
 if (rdev->net) {
  list_add_tail(&rdev->net_list, &rdev->net->devices);
  if (rdev->pef & RIO_PEF_SWITCH)
   list_add_tail(&rdev->rswitch->node,
          &rdev->net->switches);
 }
 spin_unlock(&rio_global_list_lock);

 return 0;
}
