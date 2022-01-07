
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int dwc2_readl (struct dwc2_hsotg*,int) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int) ;

__attribute__((used)) static inline void dwc2_clear_bit(struct dwc2_hsotg *hsotg, u32 offset, u32 val)
{
 dwc2_writel(hsotg, dwc2_readl(hsotg, offset) & ~val, offset);
}
