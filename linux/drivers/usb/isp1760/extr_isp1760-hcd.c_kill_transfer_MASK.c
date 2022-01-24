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
struct usb_hcd {int /*<<< orphan*/  regs; } ;
struct urb {int /*<<< orphan*/  pipe; } ;
struct isp1760_qh {int slot; } ;
struct isp1760_hcd {TYPE_2__* int_slots; TYPE_1__* atl_slots; } ;
struct TYPE_4__ {int /*<<< orphan*/ * qtd; int /*<<< orphan*/ * qh; } ;
struct TYPE_3__ {int /*<<< orphan*/ * qtd; int /*<<< orphan*/ * qh; } ;

/* Variables and functions */
 int /*<<< orphan*/  HC_ATL_PTD_SKIPMAP_REG ; 
 int /*<<< orphan*/  HC_INT_PTD_SKIPMAP_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct isp1760_hcd* FUNC1 (struct usb_hcd*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usb_hcd *hcd, struct urb *urb,
		struct isp1760_qh *qh)
{
	struct isp1760_hcd *priv = FUNC1(hcd);
	int skip_map;

	FUNC0(qh->slot == -1);

	/* We need to forcefully reclaim the slot since some transfers never
	   return, e.g. interrupt transfers and NAKed bulk transfers. */
	if (FUNC5(urb->pipe) || FUNC4(urb->pipe)) {
		skip_map = FUNC2(hcd->regs, HC_ATL_PTD_SKIPMAP_REG);
		skip_map |= (1 << qh->slot);
		FUNC3(hcd->regs, HC_ATL_PTD_SKIPMAP_REG, skip_map);
		priv->atl_slots[qh->slot].qh = NULL;
		priv->atl_slots[qh->slot].qtd = NULL;
	} else {
		skip_map = FUNC2(hcd->regs, HC_INT_PTD_SKIPMAP_REG);
		skip_map |= (1 << qh->slot);
		FUNC3(hcd->regs, HC_INT_PTD_SKIPMAP_REG, skip_map);
		priv->int_slots[qh->slot].qh = NULL;
		priv->int_slots[qh->slot].qtd = NULL;
	}

	qh->slot = -1;
}