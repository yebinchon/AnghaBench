#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct usb_hcd {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {scalar_t__ power_down; } ;
struct TYPE_4__ {int port_suspend_change; } ;
struct TYPE_5__ {TYPE_1__ b; } ;
struct dwc2_hsotg {scalar_t__ lx_state; int /*<<< orphan*/  lock; TYPE_3__ params; TYPE_2__ flags; scalar_t__ bus_suspended; scalar_t__ regs; int /*<<< orphan*/  dev; int /*<<< orphan*/  uphy; } ;

/* Variables and functions */
 void* DWC2_L0 ; 
 scalar_t__ DWC2_L2 ; 
 scalar_t__ DWC2_POWER_DOWN_PARAM_PARTIAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  HCD_FLAG_HW_ACCESSIBLE ; 
 int /*<<< orphan*/  HPRT0 ; 
 int HPRT0_CONNDET ; 
 int HPRT0_ENACHG ; 
 int HPRT0_PWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCGCTL ; 
 int /*<<< orphan*/  PCGCTL_STOPPCLK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct dwc2_hsotg*,int) ; 
 struct dwc2_hsotg* FUNC3 (struct usb_hcd*) ; 
 scalar_t__ FUNC4 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC7 (struct dwc2_hsotg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct usb_hcd *hcd)
{
	struct dwc2_hsotg *hsotg = FUNC3(hcd);
	unsigned long flags;
	u32 pcgctl;
	int ret = 0;

	FUNC10(&hsotg->lock, flags);

	if (FUNC4(hsotg))
		goto unlock;

	if (hsotg->lx_state != DWC2_L2)
		goto unlock;

	if (hsotg->params.power_down > DWC2_POWER_DOWN_PARAM_PARTIAL) {
		hsotg->lx_state = DWC2_L0;
		goto unlock;
	}

	/*
	 * Enable power if not already done.
	 * This must not be spinlocked since duration
	 * of this call is unknown.
	 */
	if (!FUNC0(hsotg->uphy)) {
		FUNC11(&hsotg->lock, flags);
		FUNC12(hsotg->uphy, false);
		FUNC10(&hsotg->lock, flags);
	}

	if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
		/*
		 * Set HW accessible bit before powering on the controller
		 * since an interrupt may rise.
		 */
		FUNC9(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);


		/* Exit partial_power_down */
		ret = FUNC2(hsotg, true);
		if (ret && (ret != -ENOTSUPP))
			FUNC1(hsotg->dev, "exit partial_power_down failed\n");
	} else {
		pcgctl = FUNC8(hsotg->regs + PCGCTL);
		pcgctl &= ~PCGCTL_STOPPCLK;
		FUNC14(pcgctl, hsotg->regs + PCGCTL);
	}

	hsotg->lx_state = DWC2_L0;

	FUNC11(&hsotg->lock, flags);

	if (hsotg->bus_suspended) {
		FUNC10(&hsotg->lock, flags);
		hsotg->flags.b.port_suspend_change = 1;
		FUNC11(&hsotg->lock, flags);
		FUNC5(hsotg);
	} else {
		if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
			FUNC6(hsotg);

			/* Wait for controller to correctly update D+/D- level */
			FUNC13(3000, 5000);
		}

		/*
		 * Clear Port Enable and Port Status changes.
		 * Enable Port Power.
		 */
		FUNC7(hsotg, HPRT0_PWR | HPRT0_CONNDET |
				HPRT0_ENACHG, HPRT0);
		/* Wait for controller to detect Port Connect */
		FUNC13(5000, 7000);
	}

	return ret;
unlock:
	FUNC11(&hsotg->lock, flags);

	return ret;
}