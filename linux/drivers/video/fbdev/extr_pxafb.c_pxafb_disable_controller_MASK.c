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
typedef  int uint32_t ;
struct pxafb_info {int lccr0; int /*<<< orphan*/  clk; int /*<<< orphan*/  disable_done; int /*<<< orphan*/  refresh_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCCR0 ; 
 int LCCR0_DIS ; 
 int LCCR0_LCDT ; 
 int LCCR0_LDM ; 
 int /*<<< orphan*/  LCSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pxafb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pxafb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pxafb_info *fbi)
{
	uint32_t lccr0;

#ifdef CONFIG_FB_PXA_SMARTPANEL
	if (fbi->lccr0 & LCCR0_LCDT) {
		wait_for_completion_timeout(&fbi->refresh_done,
				msecs_to_jiffies(200));
		return;
	}
#endif

	/* Clear LCD Status Register */
	FUNC2(fbi, LCSR, 0xffffffff);

	lccr0 = FUNC1(fbi, LCCR0) & ~LCCR0_LDM;
	FUNC2(fbi, LCCR0, lccr0);
	FUNC2(fbi, LCCR0, lccr0 | LCCR0_DIS);

	FUNC4(&fbi->disable_done, FUNC3(200));

	/* disable LCD controller clock */
	FUNC0(fbi->clk);
}