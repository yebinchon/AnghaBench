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
struct usb_anchor {int /*<<< orphan*/  lock; } ;
struct urb {struct usb_anchor* anchor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urb*,struct usb_anchor*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct urb *urb)
{
	unsigned long flags;
	struct usb_anchor *anchor;

	if (!urb)
		return;

	anchor = urb->anchor;
	if (!anchor)
		return;

	FUNC2(&anchor->lock, flags);
	/*
	 * At this point, we could be competing with another thread which
	 * has the same intention. To protect the urb from being unanchored
	 * twice, only the winner of the race gets the job.
	 */
	if (FUNC1(anchor == urb->anchor))
		FUNC0(urb, anchor);
	FUNC3(&anchor->lock, flags);
}