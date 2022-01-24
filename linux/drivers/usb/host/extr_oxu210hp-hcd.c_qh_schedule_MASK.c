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
struct oxu_hcd {int dummy; } ;
struct ehci_qh {unsigned int start; unsigned int period; int /*<<< orphan*/  hw_info2; int /*<<< orphan*/  hw_next; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_LIST_END ; 
 int ENOSPC ; 
 int QH_CMASK ; 
 int QH_SMASK ; 
 int FUNC0 (struct oxu_hcd*,unsigned int,unsigned int,struct ehci_qh*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct oxu_hcd*,char*,struct ehci_qh*) ; 
 int FUNC5 (struct oxu_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC6 (struct oxu_hcd*,struct ehci_qh*) ; 

__attribute__((used)) static int FUNC7(struct oxu_hcd *oxu, struct ehci_qh *qh)
{
	int		status;
	unsigned	uframe;
	__le32		c_mask;
	unsigned	frame;		/* 0..(qh->period - 1), or NO_FRAME */

	FUNC6(oxu, qh);
	qh->hw_next = EHCI_LIST_END;
	frame = qh->start;

	/* reuse the previous schedule slots, if we can */
	if (frame < qh->period) {
		uframe = FUNC2(FUNC3(&qh->hw_info2) & QH_SMASK);
		status = FUNC0(oxu, frame, --uframe,
				qh, &c_mask);
	} else {
		uframe = 0;
		c_mask = 0;
		status = -ENOSPC;
	}

	/* else scan the schedule to find a group of slots such that all
	 * uframes have enough periodic bandwidth available.
	 */
	if (status) {
		/* "normal" case, uframing flexible except with splits */
		if (qh->period) {
			frame = qh->period - 1;
			do {
				for (uframe = 0; uframe < 8; uframe++) {
					status = FUNC0(oxu,
							frame, uframe, qh,
							&c_mask);
					if (status == 0)
						break;
				}
			} while (status && frame--);

		/* qh->period == 0 means every uframe */
		} else {
			frame = 0;
			status = FUNC0(oxu, 0, 0, qh, &c_mask);
		}
		if (status)
			goto done;
		qh->start = frame;

		/* reset S-frame and (maybe) C-frame masks */
		qh->hw_info2 &= FUNC1(~(QH_CMASK | QH_SMASK));
		qh->hw_info2 |= qh->period
			? FUNC1(1 << uframe)
			: FUNC1(QH_SMASK);
		qh->hw_info2 |= c_mask;
	} else
		FUNC4(oxu, "reused qh %p schedule\n", qh);

	/* stuff into the periodic schedule */
	status = FUNC5(oxu, qh);
done:
	return status;
}