
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int * mon_bus; scalar_t__ monitored; } ;
struct mon_bus {int * u_bus; } ;


 int mb () ;

__attribute__((used)) static void mon_dissolve(struct mon_bus *mbus, struct usb_bus *ubus)
{

 if (ubus->monitored) {
  ubus->monitored = 0;
  mb();
 }

 ubus->mon_bus = ((void*)0);
 mbus->u_bus = ((void*)0);
 mb();


}
