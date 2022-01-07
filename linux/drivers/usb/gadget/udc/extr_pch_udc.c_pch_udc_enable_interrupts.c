
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_udc_dev {int dummy; } ;


 int UDC_DEVIRQMSK_ADDR ;
 int pch_udc_bit_clr (struct pch_udc_dev*,int ,int ) ;

__attribute__((used)) static inline void pch_udc_enable_interrupts(struct pch_udc_dev *dev,
        u32 mask)
{
 pch_udc_bit_clr(dev, UDC_DEVIRQMSK_ADDR, mask);
}
