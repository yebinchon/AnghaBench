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
struct urb {int status; int /*<<< orphan*/  hcpriv; TYPE_1__* ep; int /*<<< orphan*/  dev; } ;
struct octeon_hcd {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  hcpriv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct octeon_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct usb_hcd*,struct urb*,int) ; 

__attribute__((used)) static int FUNC5(struct usb_hcd *hcd,
				  struct urb *urb,
				  int status)
{
	struct octeon_hcd *usb = FUNC1(hcd);
	unsigned long flags;
	int rc;

	if (!urb->dev)
		return -EINVAL;

	FUNC2(&usb->lock, flags);

	rc = FUNC4(hcd, urb, status);
	if (rc)
		goto out;

	urb->status = status;
	FUNC0(usb, urb->ep->hcpriv, urb->hcpriv);

out:
	FUNC3(&usb->lock, flags);

	return rc;
}