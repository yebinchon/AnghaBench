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
union fotg210_shadow {TYPE_2__* qh; TYPE_1__* itd; scalar_t__ ptr; } ;
typedef  int u32 ;
struct usb_device {int dummy; } ;
struct fotg210_qh_hw {int /*<<< orphan*/  hw_next; int /*<<< orphan*/  hw_info2; } ;
struct fotg210_hcd {unsigned int periodic_size; int /*<<< orphan*/ * periodic; union fotg210_shadow* pshadow; } ;
typedef  int /*<<< orphan*/  __hc32 ;
struct TYPE_4__ {union fotg210_shadow qh_next; int /*<<< orphan*/  dev; struct fotg210_qh_hw* hw; } ;
struct TYPE_3__ {union fotg210_shadow itd_next; int /*<<< orphan*/  hw_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*,int /*<<< orphan*/ ) ; 
#define  Q_TYPE_ITD 129 
#define  Q_TYPE_QH 128 
 int /*<<< orphan*/  FUNC1 (struct fotg210_hcd*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fotg210_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fotg210_hcd *fotg210, unsigned period,
		struct usb_device *dev, unsigned frame, u32 uf_mask)
{
	if (period == 0)	/* error */
		return 0;

	/* note bandwidth wastage:  split never follows csplit
	 * (different dev or endpoint) until the next uframe.
	 * calling convention doesn't make that distinction.
	 */
	for (; frame < fotg210->periodic_size; frame += period) {
		union fotg210_shadow here;
		__hc32 type;
		struct fotg210_qh_hw *hw;

		here = fotg210->pshadow[frame];
		type = FUNC0(fotg210, fotg210->periodic[frame]);
		while (here.ptr) {
			switch (FUNC2(fotg210, type)) {
			case Q_TYPE_ITD:
				type = FUNC0(fotg210, here.itd->hw_next);
				here = here.itd->itd_next;
				continue;
			case Q_TYPE_QH:
				hw = here.qh->hw;
				if (FUNC3(dev, here.qh->dev)) {
					u32 mask;

					mask = FUNC2(fotg210,
							hw->hw_info2);
					/* "knows" no gap is needed */
					mask |= mask >> 8;
					if (mask & uf_mask)
						break;
				}
				type = FUNC0(fotg210, hw->hw_next);
				here = here.qh->qh_next;
				continue;
			/* case Q_TYPE_FSTN: */
			default:
				FUNC1(fotg210,
						"periodic frame %d bogus type %d\n",
						frame, type);
			}

			/* collision or error */
			return 0;
		}
	}

	/* no collision */
	return 1;
}