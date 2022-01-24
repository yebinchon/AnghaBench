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
struct wusbhc {int dummy; } ;
struct whc {int /*<<< orphan*/  dn_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  periodic_list_wq; int /*<<< orphan*/  async_list_wq; TYPE_1__* umc; int /*<<< orphan*/  cmd_wq; scalar_t__ base; } ;
struct usb_hcd {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ WUSBSTS ; 
 int WUSBSTS_ASYNC_SCHED_SYNCED ; 
 int WUSBSTS_DNTS_INT ; 
 int WUSBSTS_ERR_INT ; 
 int WUSBSTS_GEN_CMD_DONE ; 
 int WUSBSTS_HOST_ERR ; 
 int WUSBSTS_INT ; 
 int WUSBSTS_INT_MASK ; 
 int WUSBSTS_PERIODIC_SCHED_SYNCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct whc*) ; 
 struct wusbhc* FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct whc* FUNC7 (struct wusbhc*) ; 

irqreturn_t FUNC8(struct usb_hcd *hcd)
{
	struct wusbhc *wusbhc = FUNC5(hcd);
	struct whc *whc = FUNC7(wusbhc);
	u32 sts;

	sts = FUNC1(whc->base + WUSBSTS);
	if (!(sts & WUSBSTS_INT_MASK))
		return IRQ_NONE;
	FUNC2(sts & WUSBSTS_INT_MASK, whc->base + WUSBSTS);

	if (sts & WUSBSTS_GEN_CMD_DONE)
		FUNC6(&whc->cmd_wq);

	if (sts & WUSBSTS_HOST_ERR)
		FUNC0(&whc->umc->dev, "FIXME: host system error\n");

	if (sts & WUSBSTS_ASYNC_SCHED_SYNCED)
		FUNC6(&whc->async_list_wq);

	if (sts & WUSBSTS_PERIODIC_SCHED_SYNCED)
		FUNC6(&whc->periodic_list_wq);

	if (sts & WUSBSTS_DNTS_INT)
		FUNC3(whc->workqueue, &whc->dn_work);

	/*
	 * A transfer completed (see [WHCI] section 4.7.1.2 for when
	 * this occurs).
	 */
	if (sts & (WUSBSTS_INT | WUSBSTS_ERR_INT))
		FUNC4(whc);

	return IRQ_HANDLED;
}