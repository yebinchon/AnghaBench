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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  power_down; } ;
struct dwc2_hsotg {int bus_suspended; int /*<<< orphan*/  lock; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPRT0 ; 
 int HPRT0_RES ; 
 int HPRT0_SUSP ; 
 int /*<<< orphan*/  PCGCTL ; 
 int PCGCTL_STOPPCLK ; 
 int USB_RESUME_TIMEOUT ; 
 int FUNC0 (struct dwc2_hsotg*) ; 
 int FUNC1 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct dwc2_hsotg *hsotg)
{
	unsigned long flags;
	u32 hprt0;
	u32 pcgctl;

	FUNC4(&hsotg->lock, flags);

	/*
	 * If power_down is supported, Phy clock is already resumed
	 * after registers restore.
	 */
	if (!hsotg->params.power_down) {
		pcgctl = FUNC1(hsotg, PCGCTL);
		pcgctl &= ~PCGCTL_STOPPCLK;
		FUNC2(hsotg, pcgctl, PCGCTL);
		FUNC5(&hsotg->lock, flags);
		FUNC3(20);
		FUNC4(&hsotg->lock, flags);
	}

	hprt0 = FUNC0(hsotg);
	hprt0 |= HPRT0_RES;
	hprt0 &= ~HPRT0_SUSP;
	FUNC2(hsotg, hprt0, HPRT0);
	FUNC5(&hsotg->lock, flags);

	FUNC3(USB_RESUME_TIMEOUT);

	FUNC4(&hsotg->lock, flags);
	hprt0 = FUNC0(hsotg);
	hprt0 &= ~(HPRT0_RES | HPRT0_SUSP);
	FUNC2(hsotg, hprt0, HPRT0);
	hsotg->bus_suspended = false;
	FUNC5(&hsotg->lock, flags);
}