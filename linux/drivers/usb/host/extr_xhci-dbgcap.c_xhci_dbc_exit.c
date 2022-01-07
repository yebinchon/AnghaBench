
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_hcd {int dbc; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int dev_attr_dbc ;
 int device_remove_file (struct device*,int *) ;
 int xhci_dbc_stop (struct xhci_hcd*) ;
 int xhci_dbc_tty_unregister_driver () ;
 int xhci_do_dbc_exit (struct xhci_hcd*) ;
 TYPE_2__* xhci_to_hcd (struct xhci_hcd*) ;

void xhci_dbc_exit(struct xhci_hcd *xhci)
{
 struct device *dev = xhci_to_hcd(xhci)->self.controller;

 if (!xhci->dbc)
  return;

 device_remove_file(dev, &dev_attr_dbc);
 xhci_dbc_tty_unregister_driver();
 xhci_dbc_stop(xhci);
 xhci_do_dbc_exit(xhci);
}
