#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  var; } ;
struct sa1100fb_info {int* palette_cpu; int reg_lccr3; int reg_lccr2; int reg_lccr1; int reg_lccr0; int dbar1; int dbar2; scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; TYPE_1__ fb; } ;

/* Variables and functions */
 scalar_t__ DBAR1 ; 
 scalar_t__ DBAR2 ; 
 scalar_t__ LCCR0 ; 
 int LCCR0_LEN ; 
 scalar_t__ LCCR1 ; 
 scalar_t__ LCCR2 ; 
 scalar_t__ LCCR3 ; 
 int /*<<< orphan*/  SHANNON_GPIO_DISP_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct sa1100fb_info *fbi)
{
	FUNC1(fbi->dev, "Enabling LCD controller\n");

	/*
	 * Make sure the mode bits are present in the first palette entry
	 */
	fbi->palette_cpu[0] &= 0xcfff;
	fbi->palette_cpu[0] |= FUNC4(&fbi->fb.var);

	/* enable LCD controller clock */
	FUNC0(fbi->clk);

	/* Sequence from 11.7.10 */
	FUNC6(fbi->reg_lccr3, fbi->base + LCCR3);
	FUNC6(fbi->reg_lccr2, fbi->base + LCCR2);
	FUNC6(fbi->reg_lccr1, fbi->base + LCCR1);
	FUNC6(fbi->reg_lccr0 & ~LCCR0_LEN, fbi->base + LCCR0);
	FUNC6(fbi->dbar1, fbi->base + DBAR1);
	FUNC6(fbi->dbar2, fbi->base + DBAR2);
	FUNC6(fbi->reg_lccr0 | LCCR0_LEN, fbi->base + LCCR0);

	if (FUNC3())
		FUNC2(SHANNON_GPIO_DISP_EN, 1);

	FUNC1(fbi->dev, "DBAR1: 0x%08x\n", FUNC5(fbi->base + DBAR1));
	FUNC1(fbi->dev, "DBAR2: 0x%08x\n", FUNC5(fbi->base + DBAR2));
	FUNC1(fbi->dev, "LCCR0: 0x%08x\n", FUNC5(fbi->base + LCCR0));
	FUNC1(fbi->dev, "LCCR1: 0x%08x\n", FUNC5(fbi->base + LCCR1));
	FUNC1(fbi->dev, "LCCR2: 0x%08x\n", FUNC5(fbi->base + LCCR2));
	FUNC1(fbi->dev, "LCCR3: 0x%08x\n", FUNC5(fbi->base + LCCR3));
}