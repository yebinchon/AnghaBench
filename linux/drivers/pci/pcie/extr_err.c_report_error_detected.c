
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_error_handlers {int (* error_detected ) (struct pci_dev*,int) ;} ;
struct pci_dev {scalar_t__ hdr_type; int dev; TYPE_1__* driver; } ;
typedef int pci_ers_result_t ;
typedef enum pci_ers_result { ____Placeholder_pci_ers_result } pci_ers_result ;
typedef enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;
struct TYPE_2__ {struct pci_error_handlers* err_handler; } ;


 int PCI_ERS_RESULT_NONE ;
 int PCI_ERS_RESULT_NO_AER_DRIVER ;
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int merge_result (int,int ) ;
 int pci_dev_set_io_state (struct pci_dev*,int) ;
 int pci_uevent_ers (struct pci_dev*,int ) ;
 int stub1 (struct pci_dev*,int) ;

__attribute__((used)) static int report_error_detected(struct pci_dev *dev,
     enum pci_channel_state state,
     enum pci_ers_result *result)
{
 pci_ers_result_t vote;
 const struct pci_error_handlers *err_handler;

 device_lock(&dev->dev);
 if (!pci_dev_set_io_state(dev, state) ||
  !dev->driver ||
  !dev->driver->err_handler ||
  !dev->driver->err_handler->error_detected) {






  if (dev->hdr_type != PCI_HEADER_TYPE_BRIDGE)
   vote = PCI_ERS_RESULT_NO_AER_DRIVER;
  else
   vote = PCI_ERS_RESULT_NONE;
 } else {
  err_handler = dev->driver->err_handler;
  vote = err_handler->error_detected(dev, state);
 }
 pci_uevent_ers(dev, vote);
 *result = merge_result(*result, vote);
 device_unlock(&dev->dev);
 return 0;
}
