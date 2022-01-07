
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa25x_udc {int dummy; } ;


 int UDCCR ;
 int UDCCR_MASK_BITS ;
 int udc_get_reg (struct pxa25x_udc*,int ) ;
 int udc_set_reg (struct pxa25x_udc*,int,int ) ;

__attribute__((used)) static inline void udc_clear_mask_UDCCR(struct pxa25x_udc *dev, int mask)
{
 u32 udccr = udc_get_reg(dev, UDCCR);

 udc_set_reg(dev, (udccr & UDCCR_MASK_BITS) & ~(mask & UDCCR_MASK_BITS), UDCCR);
}
