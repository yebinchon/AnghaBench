
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_error_handlers {int (* reset_done ) (struct pci_dev*) ;} ;
struct pci_dev {TYPE_1__* driver; } ;
struct TYPE_2__ {struct pci_error_handlers* err_handler; } ;


 int pci_restore_state (struct pci_dev*) ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static void pci_dev_restore(struct pci_dev *dev)
{
 const struct pci_error_handlers *err_handler =
   dev->driver ? dev->driver->err_handler : ((void*)0);

 pci_restore_state(dev);






 if (err_handler && err_handler->reset_done)
  err_handler->reset_done(dev);
}
