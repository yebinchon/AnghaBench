#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct stm32_usbphyc {int /*<<< orphan*/  dev; scalar_t__ base; int /*<<< orphan*/  clk; } ;
struct pll_params {scalar_t__ frac; scalar_t__ ndiv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ PLLDITHEN0 ; 
 scalar_t__ PLLDITHEN1 ; 
 scalar_t__ PLLFRACCTL ; 
 int /*<<< orphan*/  PLLFRACIN ; 
 int /*<<< orphan*/  PLLNDIV ; 
 scalar_t__ PLLSTRBYP ; 
 scalar_t__ PLL_INFF_MAX_RATE_HZ ; 
 scalar_t__ PLL_INFF_MIN_RATE_HZ ; 
 scalar_t__ STM32_USBPHYC_PLL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct pll_params*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct stm32_usbphyc *usbphyc)
{
	struct pll_params pll_params;
	u32 clk_rate = FUNC2(usbphyc->clk);
	u32 ndiv, frac;
	u32 usbphyc_pll;

	if ((clk_rate < PLL_INFF_MIN_RATE_HZ) ||
	    (clk_rate > PLL_INFF_MAX_RATE_HZ)) {
		FUNC4(usbphyc->dev, "input clk freq (%dHz) out of range\n",
			clk_rate);
		return -EINVAL;
	}

	FUNC5(clk_rate, &pll_params);
	ndiv = FUNC1(PLLNDIV, pll_params.ndiv);
	frac = FUNC1(PLLFRACIN, pll_params.frac);

	usbphyc_pll = PLLDITHEN1 | PLLDITHEN0 | PLLSTRBYP | ndiv;

	if (pll_params.frac)
		usbphyc_pll |= PLLFRACCTL | frac;

	FUNC6(usbphyc_pll, usbphyc->base + STM32_USBPHYC_PLL);

	FUNC3(usbphyc->dev, "input clk freq=%dHz, ndiv=%lu, frac=%lu\n",
		clk_rate, FUNC0(PLLNDIV, usbphyc_pll),
		FUNC0(PLLFRACIN, usbphyc_pll));

	return 0;
}