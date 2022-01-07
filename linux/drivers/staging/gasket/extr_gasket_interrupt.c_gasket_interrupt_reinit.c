
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gasket_dev {int dev; TYPE_1__* interrupt_data; } ;
struct TYPE_3__ {int type; } ;


 int EINVAL ;

 int dev_dbg (int ,char*) ;
 int dev_warn (int ,char*,int) ;
 int force_msix_interrupt_unmasking (struct gasket_dev*) ;
 int gasket_interrupt_msix_cleanup (TYPE_1__*) ;
 int gasket_interrupt_msix_init (TYPE_1__*) ;
 int gasket_interrupt_setup (struct gasket_dev*) ;

int gasket_interrupt_reinit(struct gasket_dev *gasket_dev)
{
 int ret;

 if (!gasket_dev->interrupt_data) {
  dev_dbg(gasket_dev->dev,
   "Attempted to reinit uninitialized interrupt data\n");
  return -EINVAL;
 }

 switch (gasket_dev->interrupt_data->type) {
 case 128:
  gasket_interrupt_msix_cleanup(gasket_dev->interrupt_data);
  ret = gasket_interrupt_msix_init(gasket_dev->interrupt_data);
  if (ret)
   break;
  force_msix_interrupt_unmasking(gasket_dev);
  break;

 default:
  ret = -EINVAL;
 }

 if (ret) {



  dev_warn(gasket_dev->dev, "Couldn't reinit interrupts: %d\n",
    ret);
  return 0;
 }

 gasket_interrupt_setup(gasket_dev);

 return 0;
}
