
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net2280 {int quirks; } ;


 int PLX_LEGACY ;
 void usb_reset_228x (struct net2280*) ;
 void usb_reset_338x (struct net2280*) ;

__attribute__((used)) static void usb_reset(struct net2280 *dev)
{
 if (dev->quirks & PLX_LEGACY)
  return usb_reset_228x(dev);
 return usb_reset_338x(dev);
}
