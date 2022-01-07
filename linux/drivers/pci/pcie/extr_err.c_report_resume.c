
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_error_handlers {int (* resume ) (struct pci_dev*) ;} ;
struct pci_dev {int dev; TYPE_1__* driver; } ;
struct TYPE_2__ {struct pci_error_handlers* err_handler; } ;


 int PCI_ERS_RESULT_RECOVERED ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int pci_channel_io_normal ;
 int pci_dev_set_io_state (struct pci_dev*,int ) ;
 int pci_uevent_ers (struct pci_dev*,int ) ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static int report_resume(struct pci_dev *dev, void *data)
{
 const struct pci_error_handlers *err_handler;

 device_lock(&dev->dev);
 if (!pci_dev_set_io_state(dev, pci_channel_io_normal) ||
  !dev->driver ||
  !dev->driver->err_handler ||
  !dev->driver->err_handler->resume)
  goto out;

 err_handler = dev->driver->err_handler;
 err_handler->resume(dev);
out:
 pci_uevent_ers(dev, PCI_ERS_RESULT_RECOVERED);
 device_unlock(&dev->dev);
 return 0;
}
