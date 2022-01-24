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
struct usb_hcd {int dummy; } ;
struct urbp {int /*<<< orphan*/  urbp_list; scalar_t__ miter_started; struct urb* urb; } ;
struct urb {scalar_t__ dev; int error_count; int /*<<< orphan*/  pipe; struct urbp* hcpriv; } ;
struct dummy_hcd {scalar_t__ udev; TYPE_1__* dum; int /*<<< orphan*/  timer; struct urbp* next_frame_urbp; int /*<<< orphan*/  urbp_list; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ PIPE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dummy_hcd*) ; 
 int FUNC2 (struct dummy_hcd*,struct urb*) ; 
 struct dummy_hcd* FUNC3 (struct usb_hcd*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct urbp*) ; 
 struct urbp* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int FUNC13 (struct usb_hcd*,struct urb*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(
	struct usb_hcd			*hcd,
	struct urb			*urb,
	gfp_t				mem_flags
) {
	struct dummy_hcd *dum_hcd;
	struct urbp	*urbp;
	unsigned long	flags;
	int		rc;

	urbp = FUNC5(sizeof *urbp, mem_flags);
	if (!urbp)
		return -ENOMEM;
	urbp->urb = urb;
	urbp->miter_started = 0;

	dum_hcd = FUNC3(hcd);
	FUNC8(&dum_hcd->dum->lock, flags);

	rc = FUNC2(dum_hcd, urb);
	if (rc) {
		FUNC4(urbp);
		goto done;
	}

	rc = FUNC13(hcd, urb);
	if (rc) {
		FUNC4(urbp);
		goto done;
	}

	if (!dum_hcd->udev) {
		dum_hcd->udev = urb->dev;
		FUNC12(dum_hcd->udev);
	} else if (FUNC11(dum_hcd->udev != urb->dev))
		FUNC0(FUNC1(dum_hcd), "usb_device address has changed!\n");

	FUNC6(&urbp->urbp_list, &dum_hcd->urbp_list);
	urb->hcpriv = urbp;
	if (!dum_hcd->next_frame_urbp)
		dum_hcd->next_frame_urbp = urbp;
	if (FUNC14(urb->pipe) == PIPE_CONTROL)
		urb->error_count = 1;		/* mark as a new urb */

	/* kick the scheduler, it'll do the rest */
	if (!FUNC10(&dum_hcd->timer))
		FUNC7(&dum_hcd->timer, jiffies + 1);

 done:
	FUNC9(&dum_hcd->dum->lock, flags);
	return rc;
}