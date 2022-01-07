
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intf_hdl {int intf_hdl_close; int intf_hdl_open; int intf_hdl_unload; int intf_hdl_init; } ;


 int usb_intf_hdl_close ;
 int usb_intf_hdl_init ;
 int usb_intf_hdl_open ;
 int usb_intf_hdl_unload ;

void r8712_usb_set_intf_funs(struct intf_hdl *intfhdl)
{
 intfhdl->intf_hdl_init = usb_intf_hdl_init;
 intfhdl->intf_hdl_unload = usb_intf_hdl_unload;
 intfhdl->intf_hdl_open = usb_intf_hdl_open;
 intfhdl->intf_hdl_close = usb_intf_hdl_close;
}
