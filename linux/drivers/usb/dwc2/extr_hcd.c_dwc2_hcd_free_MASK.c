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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {scalar_t__ snpsid; } ;
struct TYPE_3__ {scalar_t__ host_dma; } ;
struct dwc2_hsotg {int /*<<< orphan*/  wkp_timer; int /*<<< orphan*/  phy_reset_work; scalar_t__ wq_otg; int /*<<< orphan*/  wf_otg; TYPE_2__ hw_params; struct dwc2_host_chan* status_buf; int /*<<< orphan*/  status_buf_dma; int /*<<< orphan*/  dev; TYPE_1__ params; struct dwc2_host_chan** hc_ptr_array; int /*<<< orphan*/  periodic_sched_queued; int /*<<< orphan*/  periodic_sched_assigned; int /*<<< orphan*/  periodic_sched_ready; int /*<<< orphan*/  periodic_sched_inactive; int /*<<< orphan*/  non_periodic_sched_active; int /*<<< orphan*/  non_periodic_sched_waiting; int /*<<< orphan*/  non_periodic_sched_inactive; } ;
struct dwc2_host_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCTL ; 
 int /*<<< orphan*/  DCTL_SFTDISCON ; 
 scalar_t__ DWC2_CORE_REV_3_00a ; 
 int /*<<< orphan*/  DWC2_HCD_STATUS_BUF_SIZE ; 
 int /*<<< orphan*/  GAHBCFG ; 
 int /*<<< orphan*/  GAHBCFG_GLBL_INTR_EN ; 
 int /*<<< orphan*/  GINTMSK ; 
 int MAX_EPS_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dwc2_host_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc2_host_chan*) ; 

__attribute__((used)) static void FUNC10(struct dwc2_hsotg *hsotg)
{
	u32 ahbcfg;
	u32 dctl;
	int i;

	FUNC3(hsotg->dev, "DWC OTG HCD FREE\n");

	/* Free memory for QH/QTD lists */
	FUNC5(hsotg, &hsotg->non_periodic_sched_inactive);
	FUNC5(hsotg, &hsotg->non_periodic_sched_waiting);
	FUNC5(hsotg, &hsotg->non_periodic_sched_active);
	FUNC5(hsotg, &hsotg->periodic_sched_inactive);
	FUNC5(hsotg, &hsotg->periodic_sched_ready);
	FUNC5(hsotg, &hsotg->periodic_sched_assigned);
	FUNC5(hsotg, &hsotg->periodic_sched_queued);

	/* Free memory for the host channels */
	for (i = 0; i < MAX_EPS_CHANNELS; i++) {
		struct dwc2_host_chan *chan = hsotg->hc_ptr_array[i];

		if (chan) {
			FUNC3(hsotg->dev, "HCD Free channel #%i, chan=%p\n",
				i, chan);
			hsotg->hc_ptr_array[i] = NULL;
			FUNC9(chan);
		}
	}

	if (hsotg->params.host_dma) {
		if (hsotg->status_buf) {
			FUNC4(hsotg->dev, DWC2_HCD_STATUS_BUF_SIZE,
					  hsotg->status_buf,
					  hsotg->status_buf_dma);
			hsotg->status_buf = NULL;
		}
	} else {
		FUNC9(hsotg->status_buf);
		hsotg->status_buf = NULL;
	}

	ahbcfg = FUNC6(hsotg, GAHBCFG);

	/* Disable all interrupts */
	ahbcfg &= ~GAHBCFG_GLBL_INTR_EN;
	FUNC7(hsotg, ahbcfg, GAHBCFG);
	FUNC7(hsotg, 0, GINTMSK);

	if (hsotg->hw_params.snpsid >= DWC2_CORE_REV_3_00a) {
		dctl = FUNC6(hsotg, DCTL);
		dctl |= DCTL_SFTDISCON;
		FUNC7(hsotg, dctl, DCTL);
	}

	if (hsotg->wq_otg) {
		if (!FUNC0(&hsotg->wf_otg))
			FUNC8(hsotg->wq_otg);
		FUNC2(hsotg->wq_otg);
	}

	FUNC0(&hsotg->phy_reset_work);

	FUNC1(&hsotg->wkp_timer);
}