
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int dwc2_readl (struct dwc2_hsotg*,int ) ;

__attribute__((used)) static inline void dwc2_readl_rep(struct dwc2_hsotg *hsotg, u32 offset,
      void *buffer, unsigned int count)
{
 if (count) {
  u32 *buf = buffer;

  do {
   u32 x = dwc2_readl(hsotg, offset);
   *buf++ = x;
  } while (--count);
 }
}
