
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {struct mon_bus* mon_bus; } ;
struct urb {int dummy; } ;
struct mon_bus {int dummy; } ;


 struct mon_bus mon_bus0 ;
 int mon_bus_complete (struct mon_bus*,struct urb*,int) ;

__attribute__((used)) static void mon_complete(struct usb_bus *ubus, struct urb *urb, int status)
{
 struct mon_bus *mbus;

 mbus = ubus->mon_bus;
 if (mbus != ((void*)0))
  mon_bus_complete(mbus, urb, status);
 mon_bus_complete(&mon_bus0, urb, status);
}
