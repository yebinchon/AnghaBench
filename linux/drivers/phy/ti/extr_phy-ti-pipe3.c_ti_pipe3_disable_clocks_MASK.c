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
struct ti_pipe3 {int sata_refclk_enabled; int /*<<< orphan*/  div_clk; int /*<<< orphan*/  refclk; int /*<<< orphan*/  wkupclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ti_pipe3 *phy)
{
	if (!FUNC0(phy->wkupclk))
		FUNC1(phy->wkupclk);
	if (!FUNC0(phy->refclk)) {
		FUNC1(phy->refclk);
		/*
		 * SATA refclk needs an additional disable as we left it
		 * on in probe to avoid Errata i783
		 */
		if (phy->sata_refclk_enabled) {
			FUNC1(phy->refclk);
			phy->sata_refclk_enabled = false;
		}
	}

	if (!FUNC0(phy->div_clk))
		FUNC1(phy->div_clk);
}