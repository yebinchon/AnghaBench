
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;


 int PHYSDEVOP_DBGP_RESET_DONE ;
 int xen_dbgp_op (struct usb_hcd*,int ) ;

int xen_dbgp_external_startup(struct usb_hcd *hcd)
{
 return xen_dbgp_op(hcd, PHYSDEVOP_DBGP_RESET_DONE);
}
