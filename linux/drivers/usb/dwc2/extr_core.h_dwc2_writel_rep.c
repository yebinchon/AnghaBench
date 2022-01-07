
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int dwc2_writel (struct dwc2_hsotg*,int ,int ) ;

__attribute__((used)) static inline void dwc2_writel_rep(struct dwc2_hsotg *hsotg, u32 offset,
       const void *buffer, unsigned int count)
{
 if (count) {
  const u32 *buf = buffer;

  do {
   dwc2_writel(hsotg, *buf++, offset);
  } while (--count);
 }
}
