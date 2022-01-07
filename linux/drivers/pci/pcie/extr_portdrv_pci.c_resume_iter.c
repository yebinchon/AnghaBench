
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port_service_driver {int (* error_resume ) (int ) ;} ;
struct pcie_device {int port; } ;
struct device {scalar_t__ driver; int * bus; } ;


 int pcie_port_bus_type ;
 int stub1 (int ) ;
 struct pcie_device* to_pcie_device (struct device*) ;
 struct pcie_port_service_driver* to_service_driver (scalar_t__) ;

__attribute__((used)) static int resume_iter(struct device *device, void *data)
{
 struct pcie_device *pcie_device;
 struct pcie_port_service_driver *driver;

 if (device->bus == &pcie_port_bus_type && device->driver) {
  driver = to_service_driver(device->driver);
  if (driver && driver->error_resume) {
   pcie_device = to_pcie_device(device);


   driver->error_resume(pcie_device->port);
  }
 }

 return 0;
}
