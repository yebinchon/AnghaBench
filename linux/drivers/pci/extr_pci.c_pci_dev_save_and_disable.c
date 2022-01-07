
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_error_handlers {int (* reset_prepare ) (struct pci_dev*) ;} ;
struct pci_dev {TYPE_1__* driver; } ;
struct TYPE_2__ {struct pci_error_handlers* err_handler; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int PCI_D0 ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static void pci_dev_save_and_disable(struct pci_dev *dev)
{
 const struct pci_error_handlers *err_handler =
   dev->driver ? dev->driver->err_handler : ((void*)0);






 if (err_handler && err_handler->reset_prepare)
  err_handler->reset_prepare(dev);






 pci_set_power_state(dev, PCI_D0);

 pci_save_state(dev);







 pci_write_config_word(dev, PCI_COMMAND, PCI_COMMAND_INTX_DISABLE);
}
