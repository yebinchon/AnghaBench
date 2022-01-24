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
struct imxfb_info {int enabled; scalar_t__ regs; int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  clk_per; } ;

/* Variables and functions */
 scalar_t__ LCDC_RMCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct imxfb_info *fbi)
{
	if (!fbi->enabled)
		return;

	FUNC1("Disabling LCD controller\n");

	FUNC0(fbi->clk_per);
	FUNC0(fbi->clk_ahb);
	FUNC0(fbi->clk_ipg);
	fbi->enabled = false;

	FUNC2(0, fbi->regs + LCDC_RMCR);
}