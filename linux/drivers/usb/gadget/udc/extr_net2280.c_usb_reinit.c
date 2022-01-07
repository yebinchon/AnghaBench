
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net2280 {int quirks; } ;


 int PLX_LEGACY ;
 void usb_reinit_228x (struct net2280*) ;
 void usb_reinit_338x (struct net2280*) ;

__attribute__((used)) static void usb_reinit(struct net2280 *dev)
{
 if (dev->quirks & PLX_LEGACY)
  return usb_reinit_228x(dev);
 return usb_reinit_338x(dev);
}
