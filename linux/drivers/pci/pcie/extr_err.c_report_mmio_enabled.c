
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_error_handlers {int (* mmio_enabled ) (struct pci_dev*) ;} ;
struct pci_dev {int dev; TYPE_1__* driver; } ;
typedef int pci_ers_result_t ;
struct TYPE_2__ {struct pci_error_handlers* err_handler; } ;


 int device_lock (int *) ;
 int device_unlock (int *) ;
 int merge_result (int ,int ) ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static int report_mmio_enabled(struct pci_dev *dev, void *data)
{
 pci_ers_result_t vote, *result = data;
 const struct pci_error_handlers *err_handler;

 device_lock(&dev->dev);
 if (!dev->driver ||
  !dev->driver->err_handler ||
  !dev->driver->err_handler->mmio_enabled)
  goto out;

 err_handler = dev->driver->err_handler;
 vote = err_handler->mmio_enabled(dev);
 *result = merge_result(*result, vote);
out:
 device_unlock(&dev->dev);
 return 0;
}
