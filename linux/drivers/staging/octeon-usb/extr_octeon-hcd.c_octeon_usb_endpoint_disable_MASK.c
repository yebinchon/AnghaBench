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
struct usb_host_endpoint {struct cvmx_usb_pipe* hcpriv; } ;
struct TYPE_2__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct octeon_hcd {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
struct cvmx_usb_pipe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct octeon_hcd*,struct cvmx_usb_pipe*) ; 
 scalar_t__ FUNC1 (struct octeon_hcd*,struct cvmx_usb_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,struct cvmx_usb_pipe*) ; 
 struct octeon_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct usb_hcd *hcd,
					struct usb_host_endpoint *ep)
{
	struct device *dev = hcd->self.controller;

	if (ep->hcpriv) {
		struct octeon_hcd *usb = FUNC3(hcd);
		struct cvmx_usb_pipe *pipe = ep->hcpriv;
		unsigned long flags;

		FUNC4(&usb->lock, flags);
		FUNC0(usb, pipe);
		if (FUNC1(usb, pipe))
			FUNC2(dev, "Closing pipe %p failed\n", pipe);
		FUNC5(&usb->lock, flags);
		ep->hcpriv = NULL;
	}
}