
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stm32_usbphyc {int dev; scalar_t__ base; int clk; } ;
struct pll_params {scalar_t__ frac; scalar_t__ ndiv; } ;


 int EINVAL ;
 int FIELD_GET (int ,scalar_t__) ;
 scalar_t__ FIELD_PREP (int ,scalar_t__) ;
 scalar_t__ PLLDITHEN0 ;
 scalar_t__ PLLDITHEN1 ;
 scalar_t__ PLLFRACCTL ;
 int PLLFRACIN ;
 int PLLNDIV ;
 scalar_t__ PLLSTRBYP ;
 scalar_t__ PLL_INFF_MAX_RATE_HZ ;
 scalar_t__ PLL_INFF_MIN_RATE_HZ ;
 scalar_t__ STM32_USBPHYC_PLL ;
 scalar_t__ clk_get_rate (int ) ;
 int dev_dbg (int ,char*,scalar_t__,int ,int ) ;
 int dev_err (int ,char*,scalar_t__) ;
 int stm32_usbphyc_get_pll_params (scalar_t__,struct pll_params*) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static int stm32_usbphyc_pll_init(struct stm32_usbphyc *usbphyc)
{
 struct pll_params pll_params;
 u32 clk_rate = clk_get_rate(usbphyc->clk);
 u32 ndiv, frac;
 u32 usbphyc_pll;

 if ((clk_rate < PLL_INFF_MIN_RATE_HZ) ||
     (clk_rate > PLL_INFF_MAX_RATE_HZ)) {
  dev_err(usbphyc->dev, "input clk freq (%dHz) out of range\n",
   clk_rate);
  return -EINVAL;
 }

 stm32_usbphyc_get_pll_params(clk_rate, &pll_params);
 ndiv = FIELD_PREP(PLLNDIV, pll_params.ndiv);
 frac = FIELD_PREP(PLLFRACIN, pll_params.frac);

 usbphyc_pll = PLLDITHEN1 | PLLDITHEN0 | PLLSTRBYP | ndiv;

 if (pll_params.frac)
  usbphyc_pll |= PLLFRACCTL | frac;

 writel_relaxed(usbphyc_pll, usbphyc->base + STM32_USBPHYC_PLL);

 dev_dbg(usbphyc->dev, "input clk freq=%dHz, ndiv=%lu, frac=%lu\n",
  clk_rate, FIELD_GET(PLLNDIV, usbphyc_pll),
  FIELD_GET(PLLFRACIN, usbphyc_pll));

 return 0;
}
