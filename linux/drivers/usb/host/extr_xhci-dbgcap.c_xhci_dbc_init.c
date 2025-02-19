
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_hcd {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int dev_attr_dbc ;
 int device_create_file (struct device*,int *) ;
 int xhci_dbc_tty_register_driver (struct xhci_hcd*) ;
 int xhci_dbc_tty_unregister_driver () ;
 int xhci_do_dbc_exit (struct xhci_hcd*) ;
 int xhci_do_dbc_init (struct xhci_hcd*) ;
 TYPE_2__* xhci_to_hcd (struct xhci_hcd*) ;

int xhci_dbc_init(struct xhci_hcd *xhci)
{
 int ret;
 struct device *dev = xhci_to_hcd(xhci)->self.controller;

 ret = xhci_do_dbc_init(xhci);
 if (ret)
  goto init_err3;

 ret = xhci_dbc_tty_register_driver(xhci);
 if (ret)
  goto init_err2;

 ret = device_create_file(dev, &dev_attr_dbc);
 if (ret)
  goto init_err1;

 return 0;

init_err1:
 xhci_dbc_tty_unregister_driver();
init_err2:
 xhci_do_dbc_exit(xhci);
init_err3:
 return ret;
}
