
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct TYPE_5__ {int devfn; int bus; int seg; } ;
struct TYPE_6__ {TYPE_1__ pci; } ;
struct physdev_dbgp_op {int op; int bus; TYPE_2__ u; } ;
struct pci_dev {int devfn; TYPE_3__* bus; } ;
struct device {int dummy; } ;
struct TYPE_8__ {struct device* controller; } ;
struct TYPE_7__ {int number; } ;


 int HYPERVISOR_physdev_op (int ,struct physdev_dbgp_op*) ;
 int PHYSDEVOP_DBGP_BUS_PCI ;
 int PHYSDEVOP_DBGP_BUS_UNKNOWN ;
 int PHYSDEVOP_dbgp_op ;
 scalar_t__ dev_is_pci (struct device const*) ;
 TYPE_4__* hcd_to_bus (struct usb_hcd*) ;
 int pci_domain_nr (TYPE_3__*) ;
 struct pci_dev* to_pci_dev (struct device const*) ;
 int xen_initial_domain () ;

__attribute__((used)) static int xen_dbgp_op(struct usb_hcd *hcd, int op)
{



 struct physdev_dbgp_op dbgp;

 if (!xen_initial_domain())
  return 0;

 dbgp.op = op;
  dbgp.bus = PHYSDEVOP_DBGP_BUS_UNKNOWN;

 return HYPERVISOR_physdev_op(PHYSDEVOP_dbgp_op, &dbgp);
}
