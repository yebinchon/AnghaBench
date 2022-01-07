
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_interrupt_data {int type; struct gasket_interrupt_data* eventfd_ctxs; struct gasket_interrupt_data* interrupt_counts; } ;
struct gasket_dev {struct gasket_interrupt_data* interrupt_data; } ;



 int gasket_interrupt_msix_cleanup (struct gasket_interrupt_data*) ;
 int kfree (struct gasket_interrupt_data*) ;

void gasket_interrupt_cleanup(struct gasket_dev *gasket_dev)
{
 struct gasket_interrupt_data *interrupt_data =
  gasket_dev->interrupt_data;




 if (!interrupt_data)
  return;

 switch (interrupt_data->type) {
 case 128:
  gasket_interrupt_msix_cleanup(interrupt_data);
  break;

 default:
  break;
 }

 kfree(interrupt_data->interrupt_counts);
 kfree(interrupt_data->eventfd_ctxs);
 kfree(interrupt_data);
 gasket_dev->interrupt_data = ((void*)0);
}
