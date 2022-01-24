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
struct fotg210_qh_hw {int /*<<< orphan*/  hw_info2; int /*<<< orphan*/  hw_next; } ;
struct fotg210_qh {unsigned int start; unsigned int period; struct fotg210_qh_hw* hw; } ;
struct fotg210_hcd {unsigned int random_frame; } ;
typedef  int /*<<< orphan*/  __hc32 ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_hcd*) ; 
 int QH_CMASK ; 
 int QH_SMASK ; 
 int FUNC1 (struct fotg210_hcd*,unsigned int,unsigned int,struct fotg210_qh*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_hcd*,int) ; 
 unsigned int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct fotg210_hcd*,char*,struct fotg210_qh*) ; 
 int FUNC5 (struct fotg210_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fotg210_hcd*,struct fotg210_qh*) ; 
 int /*<<< orphan*/  FUNC7 (struct fotg210_hcd*,struct fotg210_qh*) ; 

__attribute__((used)) static int FUNC8(struct fotg210_hcd *fotg210, struct fotg210_qh *qh)
{
	int status;
	unsigned uframe;
	__hc32 c_mask;
	unsigned frame;	/* 0..(qh->period - 1), or NO_FRAME */
	struct fotg210_qh_hw *hw = qh->hw;

	FUNC7(fotg210, qh);
	hw->hw_next = FUNC0(fotg210);
	frame = qh->start;

	/* reuse the previous schedule slots, if we can */
	if (frame < qh->period) {
		uframe = FUNC3(FUNC5(fotg210, &hw->hw_info2) & QH_SMASK);
		status = FUNC1(fotg210, frame, --uframe,
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
			int i;

			for (i = qh->period; status && i > 0; --i) {
				frame = ++fotg210->random_frame % qh->period;
				for (uframe = 0; uframe < 8; uframe++) {
					status = FUNC1(fotg210,
							frame, uframe, qh,
							&c_mask);
					if (status == 0)
						break;
				}
			}

		/* qh->period == 0 means every uframe */
		} else {
			frame = 0;
			status = FUNC1(fotg210, 0, 0, qh,
					&c_mask);
		}
		if (status)
			goto done;
		qh->start = frame;

		/* reset S-frame and (maybe) C-frame masks */
		hw->hw_info2 &= FUNC2(fotg210, ~(QH_CMASK | QH_SMASK));
		hw->hw_info2 |= qh->period
			? FUNC2(fotg210, 1 << uframe)
			: FUNC2(fotg210, QH_SMASK);
		hw->hw_info2 |= c_mask;
	} else
		FUNC4(fotg210, "reused qh %p schedule\n", qh);

	/* stuff into the periodic schedule */
	FUNC6(fotg210, qh);
done:
	return status;
}