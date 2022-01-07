
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;


 int PMSG_ON ;
 int gigaset_suspend (struct usb_interface*,int ) ;

__attribute__((used)) static int gigaset_pre_reset(struct usb_interface *intf)
{

 return gigaset_suspend(intf, PMSG_ON);
}
