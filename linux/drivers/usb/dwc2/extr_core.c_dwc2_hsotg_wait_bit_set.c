
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dwc2_hsotg {int dummy; } ;


 int ETIMEDOUT ;
 scalar_t__ dwc2_readl (struct dwc2_hsotg*,scalar_t__) ;
 int udelay (int) ;

int dwc2_hsotg_wait_bit_set(struct dwc2_hsotg *hsotg, u32 offset, u32 mask,
       u32 timeout)
{
 u32 i;

 for (i = 0; i < timeout; i++) {
  if (dwc2_readl(hsotg, offset) & mask)
   return 0;
  udelay(1);
 }

 return -ETIMEDOUT;
}
