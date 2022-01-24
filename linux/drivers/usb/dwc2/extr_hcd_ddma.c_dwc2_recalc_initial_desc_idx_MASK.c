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
typedef  int u16 ;
struct dwc2_qh {int next_active_frame; int /*<<< orphan*/  td_last; int /*<<< orphan*/  td_first; scalar_t__ channel; } ;
struct dwc2_hsotg {int dummy; } ;

/* Variables and functions */
 int FRLISTEN_64_SIZE ; 
 void* FUNC0 (struct dwc2_hsotg*,struct dwc2_qh*,int*) ; 
 int FUNC1 (struct dwc2_qh*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_qh*,int) ; 

__attribute__((used)) static u16 FUNC4(struct dwc2_hsotg *hsotg,
					struct dwc2_qh *qh)
{
	u16 frame, fr_idx, fr_idx_tmp, skip_frames;

	/*
	 * With current ISOC processing algorithm the channel is being released
	 * when no more QTDs in the list (qh->ntd == 0). Thus this function is
	 * called only when qh->ntd == 0 and qh->channel == 0.
	 *
	 * So qh->channel != NULL branch is not used and just not removed from
	 * the source file. It is required for another possible approach which
	 * is, do not disable and release the channel when ISOC session
	 * completed, just move QH to inactive schedule until new QTD arrives.
	 * On new QTD, the QH moved back to 'ready' schedule, starting frame and
	 * therefore starting desc_index are recalculated. In this case channel
	 * is released only on ep_disable.
	 */

	/*
	 * Calculate starting descriptor index. For INTERRUPT endpoint it is
	 * always 0.
	 */
	if (qh->channel) {
		frame = FUNC0(hsotg, qh, &skip_frames);
		/*
		 * Calculate initial descriptor index based on FrameList current
		 * bitmap and servicing period
		 */
		fr_idx_tmp = FUNC2(frame);
		fr_idx = (FRLISTEN_64_SIZE +
			  FUNC2(qh->next_active_frame) -
			  fr_idx_tmp) % FUNC1(qh);
		fr_idx = (fr_idx + fr_idx_tmp) % FRLISTEN_64_SIZE;
	} else {
		qh->next_active_frame = FUNC0(hsotg, qh,
							   &skip_frames);
		fr_idx = FUNC2(qh->next_active_frame);
	}

	qh->td_first = qh->td_last = FUNC3(qh, fr_idx);

	return skip_frames;
}