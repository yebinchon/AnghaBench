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
union fotg210_shadow {TYPE_2__* itd; TYPE_1__* fstn; TYPE_3__* qh; scalar_t__ ptr; } ;
struct usb_hcd {int dummy; } ;
struct fotg210_qh_hw {int /*<<< orphan*/  hw_next; int /*<<< orphan*/  hw_info2; } ;
struct fotg210_hcd {unsigned int periodic_size; int /*<<< orphan*/  lock; int /*<<< orphan*/ * periodic; union fotg210_shadow* pshadow; } ;
struct debug_buffer {char* output_buf; unsigned int alloc_size; int /*<<< orphan*/  bus; } ;
typedef  unsigned int ssize_t ;
typedef  int /*<<< orphan*/  __hc32 ;
struct TYPE_6__ {union fotg210_shadow qh_next; int /*<<< orphan*/  period; struct fotg210_qh_hw* hw; } ;
struct TYPE_5__ {union fotg210_shadow itd_next; int /*<<< orphan*/  hw_next; } ;
struct TYPE_4__ {union fotg210_shadow fstn_next; int /*<<< orphan*/  hw_next; int /*<<< orphan*/  hw_prev; } ;

/* Variables and functions */
 unsigned int DBG_SCHED_LIMIT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int QH_CMASK ; 
 int QH_SMASK ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*,int /*<<< orphan*/ ) ; 
#define  Q_TYPE_FSTN 130 
#define  Q_TYPE_ITD 129 
#define  Q_TYPE_QH 128 
 struct usb_hcd* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fotg210_hcd*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fotg210_hcd*,int /*<<< orphan*/ *) ; 
 struct fotg210_hcd* FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (union fotg210_shadow*) ; 
 union fotg210_shadow* FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 unsigned int FUNC8 (char*,struct fotg210_hcd*,struct fotg210_qh_hw*,TYPE_3__*,unsigned int) ; 
 unsigned int FUNC9 (char*,unsigned int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC12(struct debug_buffer *buf)
{
	struct usb_hcd *hcd;
	struct fotg210_hcd *fotg210;
	unsigned long flags;
	union fotg210_shadow p, *seen;
	unsigned temp, size, seen_count;
	char *next;
	unsigned i;
	__hc32 tag;

	seen = FUNC6(DBG_SCHED_LIMIT, sizeof(*seen), GFP_ATOMIC);
	if (!seen)
		return 0;

	seen_count = 0;

	hcd = FUNC1(buf->bus);
	fotg210 = FUNC4(hcd);
	next = buf->output_buf;
	size = buf->alloc_size;

	temp = FUNC9(next, size, "size = %d\n", fotg210->periodic_size);
	size -= temp;
	next += temp;

	/* dump a snapshot of the periodic schedule.
	 * iso changes, interrupt usually doesn't.
	 */
	FUNC10(&fotg210->lock, flags);
	for (i = 0; i < fotg210->periodic_size; i++) {
		p = fotg210->pshadow[i];
		if (FUNC7(!p.ptr))
			continue;

		tag = FUNC0(fotg210, fotg210->periodic[i]);

		temp = FUNC9(next, size, "%4d: ", i);
		size -= temp;
		next += temp;

		do {
			struct fotg210_qh_hw *hw;

			switch (FUNC2(fotg210, tag)) {
			case Q_TYPE_QH:
				hw = p.qh->hw;
				temp = FUNC9(next, size, " qh%d-%04x/%p",
						p.qh->period,
						FUNC3(fotg210,
							&hw->hw_info2)
							/* uframe masks */
							& (QH_CMASK | QH_SMASK),
						p.qh);
				size -= temp;
				next += temp;
				/* don't repeat what follows this qh */
				for (temp = 0; temp < seen_count; temp++) {
					if (seen[temp].ptr != p.ptr)
						continue;
					if (p.qh->qh_next.ptr) {
						temp = FUNC9(next, size,
								" ...");
						size -= temp;
						next += temp;
					}
					break;
				}
				/* show more info the first time around */
				if (temp == seen_count) {
					temp = FUNC8(next,
							fotg210, hw,
							p.qh, size);

					if (seen_count < DBG_SCHED_LIMIT)
						seen[seen_count++].qh = p.qh;
				} else
					temp = 0;
				tag = FUNC0(fotg210, hw->hw_next);
				p = p.qh->qh_next;
				break;
			case Q_TYPE_FSTN:
				temp = FUNC9(next, size,
						" fstn-%8x/%p",
						p.fstn->hw_prev, p.fstn);
				tag = FUNC0(fotg210, p.fstn->hw_next);
				p = p.fstn->fstn_next;
				break;
			case Q_TYPE_ITD:
				temp = FUNC9(next, size,
						" itd/%p", p.itd);
				tag = FUNC0(fotg210, p.itd->hw_next);
				p = p.itd->itd_next;
				break;
			}
			size -= temp;
			next += temp;
		} while (p.ptr);

		temp = FUNC9(next, size, "\n");
		size -= temp;
		next += temp;
	}
	FUNC11(&fotg210->lock, flags);
	FUNC5(seen);

	return buf->alloc_size - size;
}