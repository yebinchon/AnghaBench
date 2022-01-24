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
struct usb_hcd {int /*<<< orphan*/  self; } ;
struct usb_anchor {int dummy; } ;
struct urb {int unlinked; int transfer_flags; scalar_t__ actual_length; scalar_t__ transfer_buffer_length; int status; int /*<<< orphan*/  reject; int /*<<< orphan*/  use_count; int /*<<< orphan*/  (* complete ) (struct urb*) ;int /*<<< orphan*/ * hcpriv; struct usb_anchor* anchor; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int URB_SHORT_NOT_OK ; 
 int /*<<< orphan*/  USB_LED_EVENT_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct usb_hcd* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_anchor*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_anchor*) ; 
 int /*<<< orphan*/  usb_kill_urb_queue ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct urb *urb)
{
	struct usb_hcd *hcd = FUNC2(urb->dev->bus);
	struct usb_anchor *anchor = urb->anchor;
	int status = urb->unlinked;

	urb->hcpriv = NULL;
	if (FUNC5((urb->transfer_flags & URB_SHORT_NOT_OK) &&
	    urb->actual_length < urb->transfer_buffer_length &&
	    !status))
		status = -EREMOTEIO;

	FUNC6(hcd, urb);
	FUNC12(&hcd->self, urb, status);
	FUNC8(anchor);
	FUNC11(urb);
	if (FUNC3(status == 0))
		FUNC9(USB_LED_EVENT_HOST);

	/* pass ownership to the completion handler */
	urb->status = status;
	urb->complete(urb);

	FUNC7(anchor);
	FUNC0(&urb->use_count);
	if (FUNC5(FUNC1(&urb->reject)))
		FUNC13(&usb_kill_urb_queue);
	FUNC10(urb);
}