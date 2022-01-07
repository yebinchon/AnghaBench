
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _INTF_ASYNC_ ;

void r8712_usb_set_intf_option(u32 *option)
{
 *option = ((*option) | _INTF_ASYNC_);
}
