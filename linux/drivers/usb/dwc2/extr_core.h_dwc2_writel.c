
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dwc2_hsotg {scalar_t__ regs; scalar_t__ needs_byte_swap; } ;


 int pr_info (char*,scalar_t__,scalar_t__) ;
 scalar_t__ swab32 (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dwc2_writel(struct dwc2_hsotg *hsotg, u32 value, u32 offset)
{
 if (hsotg->needs_byte_swap)
  writel(swab32(value), hsotg->regs + offset);
 else
  writel(value, hsotg->regs + offset);




}
