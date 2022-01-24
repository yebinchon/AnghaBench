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
struct giveback_urb_bh {int running; int /*<<< orphan*/  bh; int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;
struct usb_hcd {struct giveback_urb_bh low_prio_bh; struct giveback_urb_bh high_prio_bh; } ;
struct urb {int unlinked; int /*<<< orphan*/  urb_list; int /*<<< orphan*/  pipe; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urb*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct giveback_urb_bh *bh;
	bool running, high_prio_bh;

	/* pass status to tasklet via unlinked */
	if (FUNC3(!urb->unlinked))
		urb->unlinked = status;

	if (!FUNC1(hcd) && !FUNC2(urb->dev)) {
		FUNC0(urb);
		return;
	}

	if (FUNC10(urb->pipe) || FUNC9(urb->pipe)) {
		bh = &hcd->high_prio_bh;
		high_prio_bh = true;
	} else {
		bh = &hcd->low_prio_bh;
		high_prio_bh = false;
	}

	FUNC5(&bh->lock);
	FUNC4(&urb->urb_list, &bh->head);
	running = bh->running;
	FUNC6(&bh->lock);

	if (running)
		;
	else if (high_prio_bh)
		FUNC7(&bh->bh);
	else
		FUNC8(&bh->bh);
}