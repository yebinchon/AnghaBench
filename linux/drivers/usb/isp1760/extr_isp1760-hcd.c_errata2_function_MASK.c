#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {int /*<<< orphan*/  regs; } ;
struct timer_list {int dummy; } ;
struct ptd {int /*<<< orphan*/  dw3; int /*<<< orphan*/  dw0; } ;
struct isp1760_hcd {int atl_done_map; int /*<<< orphan*/  lock; TYPE_1__* atl_slots; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {scalar_t__ timestamp; scalar_t__ qh; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATL_PTD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLOT_CHECK_PERIOD ; 
 int /*<<< orphan*/  SLOT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__ errata2_timer ; 
 struct usb_hcd* errata2_timer_hcd ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 struct isp1760_hcd* FUNC4 (struct usb_hcd*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ptd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct timer_list *unused)
{
	struct usb_hcd *hcd = errata2_timer_hcd;
	struct isp1760_hcd *priv = FUNC4(hcd);
	int slot;
	struct ptd ptd;
	unsigned long spinflags;

	FUNC7(&priv->lock, spinflags);

	for (slot = 0; slot < 32; slot++)
		if (priv->atl_slots[slot].qh && FUNC9(jiffies,
					priv->atl_slots[slot].timestamp +
					FUNC5(SLOT_TIMEOUT))) {
			FUNC6(hcd->regs, ATL_PTD_OFFSET, slot, &ptd);
			if (!FUNC0(ptd.dw0) &&
					!FUNC1(ptd.dw3))
				priv->atl_done_map |= 1 << slot;
		}

	if (priv->atl_done_map)
		FUNC3(hcd);

	FUNC8(&priv->lock, spinflags);

	errata2_timer.expires = jiffies + FUNC5(SLOT_CHECK_PERIOD);
	FUNC2(&errata2_timer);
}