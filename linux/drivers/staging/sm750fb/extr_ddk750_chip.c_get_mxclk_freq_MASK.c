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

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int DEFAULT_INPUT_CLOCK ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  MXCLK_PLL_CTRL ; 
 unsigned int PLL_CTRL_M_MASK ; 
 unsigned int PLL_CTRL_M_SHIFT ; 
 unsigned int PLL_CTRL_N_MASK ; 
 unsigned int PLL_CTRL_N_SHIFT ; 
 unsigned int PLL_CTRL_OD_MASK ; 
 unsigned int PLL_CTRL_OD_SHIFT ; 
 unsigned int PLL_CTRL_POD_MASK ; 
 unsigned int PLL_CTRL_POD_SHIFT ; 
 scalar_t__ SM750LE ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static unsigned int FUNC4(void)
{
	unsigned int pll_reg;
	unsigned int M, N, OD, POD;

	if (FUNC3() == SM750LE)
		return FUNC1(130);

	pll_reg = FUNC2(MXCLK_PLL_CTRL);
	M = (pll_reg & PLL_CTRL_M_MASK) >> PLL_CTRL_M_SHIFT;
	N = (pll_reg & PLL_CTRL_N_MASK) >> PLL_CTRL_N_SHIFT;
	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;

	return DEFAULT_INPUT_CLOCK * M / N / FUNC0(OD) / FUNC0(POD);
}