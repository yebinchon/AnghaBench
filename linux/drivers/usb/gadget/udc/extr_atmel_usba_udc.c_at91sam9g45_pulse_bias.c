
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_udc {int pmc; } ;


 int AT91_CKGR_UCKR ;
 int AT91_PMC_BIASEN ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void at91sam9g45_pulse_bias(struct usba_udc *udc)
{
 regmap_update_bits(udc->pmc, AT91_CKGR_UCKR, AT91_PMC_BIASEN, 0);
 regmap_update_bits(udc->pmc, AT91_CKGR_UCKR, AT91_PMC_BIASEN,
      AT91_PMC_BIASEN);
}
