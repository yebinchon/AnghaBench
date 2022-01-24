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
typedef  int /*<<< orphan*/  u32 ;
struct sa1100fb_info {int /*<<< orphan*/  clk; int /*<<< orphan*/  ctrlr_wait; scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HZ ; 
 scalar_t__ LCCR0 ; 
 int /*<<< orphan*/  LCCR0_LDM ; 
 int /*<<< orphan*/  LCCR0_LEN ; 
 scalar_t__ LCSR ; 
 int /*<<< orphan*/  SHANNON_GPIO_DISP_EN ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct sa1100fb_info *fbi)
{
	FUNC0(wait, current);
	u32 lccr0;

	FUNC3(fbi->dev, "Disabling LCD controller\n");

	if (FUNC5())
		FUNC4(SHANNON_GPIO_DISP_EN, 0);

	FUNC9(TASK_UNINTERRUPTIBLE);
	FUNC1(&fbi->ctrlr_wait, &wait);

	/* Clear LCD Status Register */
	FUNC10(~0, fbi->base + LCSR);

	lccr0 = FUNC6(fbi->base + LCCR0);
	lccr0 &= ~LCCR0_LDM;	/* Enable LCD Disable Done Interrupt */
	FUNC10(lccr0, fbi->base + LCCR0);
	lccr0 &= ~LCCR0_LEN;	/* Disable LCD Controller */
	FUNC10(lccr0, fbi->base + LCCR0);

	FUNC8(20 * HZ / 1000);
	FUNC7(&fbi->ctrlr_wait, &wait);

	/* disable LCD controller clock */
	FUNC2(fbi->clk);
}