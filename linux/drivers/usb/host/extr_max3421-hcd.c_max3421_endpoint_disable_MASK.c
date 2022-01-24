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
struct usb_host_endpoint {struct max3421_ep* hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct max3421_hcd {int /*<<< orphan*/  lock; } ;
struct max3421_ep {int /*<<< orphan*/  ep_list; } ;

/* Variables and functions */
 struct max3421_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct max3421_ep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
	struct max3421_hcd *max3421_hcd = FUNC0(hcd);
	unsigned long flags;

	FUNC4(&max3421_hcd->lock, flags);

	if (ep->hcpriv) {
		struct max3421_ep *max3421_ep = ep->hcpriv;

		/* remove myself from the ep_list: */
		if (!FUNC3(&max3421_ep->ep_list))
			FUNC2(&max3421_ep->ep_list);
		FUNC1(max3421_ep);
		ep->hcpriv = NULL;
	}

	FUNC5(&max3421_hcd->lock, flags);
}