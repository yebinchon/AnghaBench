
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_udc {int dummy; } ;


 int UDCCR ;
 int UDCCR_MASK_BITS ;
 int udc_readl (struct pxa_udc*,int ) ;
 int udc_writel (struct pxa_udc*,int ,int) ;

__attribute__((used)) static inline void udc_set_mask_UDCCR(struct pxa_udc *udc, int mask)
{
 u32 udccr = udc_readl(udc, UDCCR);
 udc_writel(udc, UDCCR,
   (udccr & UDCCR_MASK_BITS) | (mask & UDCCR_MASK_BITS));
}
