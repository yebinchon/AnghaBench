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
typedef  int u32 ;
struct atyfb_par {int /*<<< orphan*/  int_lock; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_INT_CNTL ; 
 int CRTC_INT_EN_MASK ; 
 int CRTC_VBLANK_INT_AK ; 
 int CRTC_VBLANK_INT_EN ; 
 int EINVAL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  aty_irq ; 
 int FUNC0 (int /*<<< orphan*/ ,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct atyfb_par *par, int reenable)
{
	u32 int_cntl;

	if (!FUNC7(0, &par->irq_flags)) {
		if (FUNC4(par->irq, aty_irq, IRQF_SHARED, "atyfb", par)) {
			FUNC2(0, &par->irq_flags);
			return -EINVAL;
		}
		FUNC5(&par->int_lock);
		int_cntl = FUNC0(CRTC_INT_CNTL, par) & CRTC_INT_EN_MASK;
		/* clear interrupt */
		FUNC1(CRTC_INT_CNTL, int_cntl | CRTC_VBLANK_INT_AK, par);
		/* enable interrupt */
		FUNC1(CRTC_INT_CNTL, int_cntl | CRTC_VBLANK_INT_EN, par);
		FUNC6(&par->int_lock);
	} else if (reenable) {
		FUNC5(&par->int_lock);
		int_cntl = FUNC0(CRTC_INT_CNTL, par) & CRTC_INT_EN_MASK;
		if (!(int_cntl & CRTC_VBLANK_INT_EN)) {
			FUNC3("atyfb: someone disabled IRQ [%08x]\n",
			       int_cntl);
			/* re-enable interrupt */
			FUNC1(CRTC_INT_CNTL, int_cntl |
				    CRTC_VBLANK_INT_EN, par);
		}
		FUNC6(&par->int_lock);
	}

	return 0;
}