
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_udc_dev {int dummy; } ;


 int UDC_DEVCFG_ADDR ;
 int UDC_DEVCFG_SP ;
 int pch_udc_bit_set (struct pch_udc_dev*,int ,int ) ;

__attribute__((used)) static inline void pch_udc_set_selfpowered(struct pch_udc_dev *dev)
{
 pch_udc_bit_set(dev, UDC_DEVCFG_ADDR, UDC_DEVCFG_SP);
}
