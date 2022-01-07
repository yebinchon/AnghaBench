
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown; int remove; int probe; int * bus; int name; } ;
struct pcie_port_service_driver {TYPE_1__ driver; int name; } ;


 int ENODEV ;
 int driver_register (TYPE_1__*) ;
 int pcie_port_bus_type ;
 int pcie_port_probe_service ;
 int pcie_port_remove_service ;
 int pcie_port_shutdown_service ;
 scalar_t__ pcie_ports_disabled ;

int pcie_port_service_register(struct pcie_port_service_driver *new)
{
 if (pcie_ports_disabled)
  return -ENODEV;

 new->driver.name = new->name;
 new->driver.bus = &pcie_port_bus_type;
 new->driver.probe = pcie_port_probe_service;
 new->driver.remove = pcie_port_remove_service;
 new->driver.shutdown = pcie_port_shutdown_service;

 return driver_register(&new->driver);
}
