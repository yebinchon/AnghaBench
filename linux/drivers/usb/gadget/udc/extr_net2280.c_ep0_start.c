
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net2280 {int quirks; } ;


 int PLX_LEGACY ;
 void ep0_start_228x (struct net2280*) ;
 void ep0_start_338x (struct net2280*) ;

__attribute__((used)) static void ep0_start(struct net2280 *dev)
{
 if (dev->quirks & PLX_LEGACY)
  return ep0_start_228x(dev);
 return ep0_start_338x(dev);
}
