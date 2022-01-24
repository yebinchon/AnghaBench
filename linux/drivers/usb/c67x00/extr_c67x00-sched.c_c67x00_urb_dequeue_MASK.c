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
struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
struct c67x00_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c67x00_hcd*,struct urb*) ; 
 struct c67x00_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_hcd*,struct urb*) ; 

int FUNC9(struct usb_hcd *hcd, struct urb *urb, int status)
{
	struct c67x00_hcd *c67x00 = FUNC1(hcd);
	unsigned long flags;
	int rc;

	FUNC3(&c67x00->lock, flags);
	rc = FUNC6(hcd, urb, status);
	if (rc)
		goto done;

	FUNC0(c67x00, urb);
	FUNC8(hcd, urb);

	FUNC4(&c67x00->lock);
	FUNC7(hcd, urb, status);
	FUNC2(&c67x00->lock);

	FUNC5(&c67x00->lock, flags);

	return 0;

 done:
	FUNC5(&c67x00->lock, flags);
	return rc;
}