
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int intf; } ;


 int ZD_MEMCLEAR (struct zd_usb*,int) ;
 int usb_put_intf (int ) ;
 int usb_set_intfdata (int ,int *) ;

void zd_usb_clear(struct zd_usb *usb)
{
 usb_set_intfdata(usb->intf, ((void*)0));
 usb_put_intf(usb->intf);
 ZD_MEMCLEAR(usb, sizeof(*usb));

}
