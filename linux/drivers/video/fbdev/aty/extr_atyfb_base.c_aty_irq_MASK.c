#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  wait; scalar_t__ pan_display; int /*<<< orphan*/  count; } ;
struct TYPE_3__ {int off_pitch; } ;
struct atyfb_par {int /*<<< orphan*/  int_lock; TYPE_2__ vblank; TYPE_1__ crtc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_INT_CNTL ; 
 int CRTC_INT_EN_MASK ; 
 int /*<<< orphan*/  CRTC_OFF_PITCH ; 
 int CRTC_VBLANK_INT ; 
 int CRTC_VBLANK_INT_AK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct atyfb_par *par = dev_id;
	int handled = 0;
	u32 int_cntl;

	FUNC3(&par->int_lock);

	int_cntl = FUNC1(CRTC_INT_CNTL, par);

	if (int_cntl & CRTC_VBLANK_INT) {
		/* clear interrupt */
		FUNC2(CRTC_INT_CNTL, (int_cntl & CRTC_INT_EN_MASK) |
			    CRTC_VBLANK_INT_AK, par);
		par->vblank.count++;
		if (par->vblank.pan_display) {
			par->vblank.pan_display = 0;
			FUNC2(CRTC_OFF_PITCH, par->crtc.off_pitch, par);
		}
		FUNC5(&par->vblank.wait);
		handled = 1;
	}

	FUNC4(&par->int_lock);

	return FUNC0(handled);
}