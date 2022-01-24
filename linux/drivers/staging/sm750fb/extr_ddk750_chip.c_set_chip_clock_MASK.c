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
struct pll_value {int /*<<< orphan*/  clockType; int /*<<< orphan*/  inputFreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_INPUT_CLOCK ; 
 int /*<<< orphan*/  MXCLK_PLL ; 
 int /*<<< orphan*/  MXCLK_PLL_CTRL ; 
 scalar_t__ SM750LE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,struct pll_value*) ; 
 int /*<<< orphan*/  FUNC2 (struct pll_value*) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void FUNC4(unsigned int frequency)
{
	struct pll_value pll;
	unsigned int actual_mx_clk;

	/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */
	if (FUNC3() == SM750LE)
		return;

	if (frequency) {
		/*
		 * Set up PLL structure to hold the value to be set in clocks.
		 */
		pll.inputFreq = DEFAULT_INPUT_CLOCK; /* Defined in CLOCK.H */
		pll.clockType = MXCLK_PLL;

		/*
		 * Call sm750_calc_pll_value() to fill the other fields
		 * of the PLL structure. Sometimes, the chip cannot set
		 * up the exact clock required by the User.
		 * Return value of sm750_calc_pll_value gives the actual
		 * possible clock.
		 */
		actual_mx_clk = FUNC1(frequency, &pll);

		/* Master Clock Control: MXCLK_PLL */
		FUNC0(MXCLK_PLL_CTRL, FUNC2(&pll));
	}
}