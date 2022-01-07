
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pxa25x_udc {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void udc_set_reg(struct pxa25x_udc *dev, u32 reg, u32 val)
{
 writel(val, dev->regs + reg);
}
