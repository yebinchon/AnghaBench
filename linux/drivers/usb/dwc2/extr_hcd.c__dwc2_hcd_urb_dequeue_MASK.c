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
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/ * hcpriv; } ;
struct dwc2_hsotg {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*,struct urb*,char*) ; 
 struct dwc2_hsotg* FUNC2 (struct usb_hcd*) ; 
 int FUNC3 (struct dwc2_hsotg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hcd*,struct urb*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_hcd*,struct urb*) ; 

__attribute__((used)) static int FUNC12(struct usb_hcd *hcd, struct urb *urb,
				 int status)
{
	struct dwc2_hsotg *hsotg = FUNC2(hcd);
	int rc;
	unsigned long flags;

	FUNC0(hsotg->dev, "DWC OTG HCD URB Dequeue\n");
	FUNC1(hcd, urb, "urb_dequeue");

	FUNC6(&hsotg->lock, flags);

	rc = FUNC9(hcd, urb, status);
	if (rc)
		goto out;

	if (!urb->hcpriv) {
		FUNC0(hsotg->dev, "## urb->hcpriv is NULL ##\n");
		goto out;
	}

	rc = FUNC3(hsotg, urb->hcpriv);

	FUNC11(hcd, urb);

	FUNC4(urb->hcpriv);
	urb->hcpriv = NULL;

	/* Higher layer software sets URB status */
	FUNC7(&hsotg->lock);
	FUNC10(hcd, urb, status);
	FUNC5(&hsotg->lock);

	FUNC0(hsotg->dev, "Called usb_hcd_giveback_urb()\n");
	FUNC0(hsotg->dev, "  urb->status = %d\n", urb->status);
out:
	FUNC8(&hsotg->lock, flags);

	return rc;
}