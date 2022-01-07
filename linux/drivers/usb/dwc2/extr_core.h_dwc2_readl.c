
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dwc2_hsotg {scalar_t__ needs_byte_swap; scalar_t__ regs; } ;


 scalar_t__ readl (scalar_t__) ;
 scalar_t__ swab32 (scalar_t__) ;

__attribute__((used)) static inline u32 dwc2_readl(struct dwc2_hsotg *hsotg, u32 offset)
{
 u32 val;

 val = readl(hsotg->regs + offset);
 if (hsotg->needs_byte_swap)
  return swab32(val);
 else
  return val;
}
