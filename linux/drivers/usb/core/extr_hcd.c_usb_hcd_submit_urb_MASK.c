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
struct usb_hcd {int /*<<< orphan*/  self; TYPE_1__* driver; } ;
struct urb {int /*<<< orphan*/  reject; TYPE_2__* dev; int /*<<< orphan*/  use_count; int /*<<< orphan*/  urb_list; int /*<<< orphan*/ * hcpriv; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  urbnum; int /*<<< orphan*/  bus; } ;
struct TYPE_3__ {int (* urb_enqueue ) (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct usb_hcd* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_hcd*,struct urb*) ; 
 int FUNC9 (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*) ; 
 int /*<<< orphan*/  usb_kill_urb_queue ; 
 int /*<<< orphan*/  FUNC13 (struct urb*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct urb*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17 (struct urb *urb, gfp_t mem_flags)
{
	int			status;
	struct usb_hcd		*hcd = FUNC4(urb->dev->bus);

	/* increment urb's reference count as part of giving it to the HCD
	 * (which will control it).  HCD guarantees that it either returns
	 * an error or calls giveback(), but not both.
	 */
	FUNC12(urb);
	FUNC2(&urb->use_count);
	FUNC2(&urb->dev->urbnum);
	FUNC14(&hcd->self, urb);

	/* NOTE requirements on root-hub callers (usbfs and the hub
	 * driver, for now):  URBs' urb->transfer_buffer must be
	 * valid and usb_buffer_{sync,unmap}() not be needed, since
	 * they could clobber root hub response data.  Also, control
	 * URBs must be submitted in process context with interrupts
	 * enabled.
	 */

	if (FUNC5(urb->dev)) {
		status = FUNC8(hcd, urb);
	} else {
		status = FUNC7(hcd, urb, mem_flags);
		if (FUNC6(status == 0)) {
			status = hcd->driver->urb_enqueue(hcd, urb, mem_flags);
			if (FUNC10(status))
				FUNC11(hcd, urb);
		}
	}

	if (FUNC10(status)) {
		FUNC15(&hcd->self, urb, status);
		urb->hcpriv = NULL;
		FUNC0(&urb->urb_list);
		FUNC1(&urb->use_count);
		FUNC1(&urb->dev->urbnum);
		if (FUNC3(&urb->reject))
			FUNC16(&usb_kill_urb_queue);
		FUNC13(urb);
	}
	return status;
}