
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct net2280 {int * ep; } ;


 size_t ARRAY_SIZE (int *) ;
 size_t BIT (int ) ;
 int * ep_bit ;
 int handle_ep_small (int *) ;

__attribute__((used)) static void usb338x_handle_ep_intr(struct net2280 *dev, u32 stat0)
{
 u32 index;
 u32 bit;

 for (index = 0; index < ARRAY_SIZE(ep_bit); index++) {
  bit = BIT(ep_bit[index]);

  if (!stat0)
   break;

  if (!(stat0 & bit))
   continue;

  stat0 &= ~bit;

  handle_ep_small(&dev->ep[index]);
 }
}
