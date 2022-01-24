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
struct usb_ep {int dummy; } ;
struct dwc3_ep {int flags; int /*<<< orphan*/  name; struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DWC3_EP_ENABLED ; 
 int EINVAL ; 
 int FUNC0 (struct dwc3_ep*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dwc3_ep* FUNC5 (struct usb_ep*) ; 

__attribute__((used)) static int FUNC6(struct usb_ep *ep)
{
	struct dwc3_ep			*dep;
	struct dwc3			*dwc;
	unsigned long			flags;
	int				ret;

	if (!ep) {
		FUNC2("dwc3: invalid parameters\n");
		return -EINVAL;
	}

	dep = FUNC5(ep);
	dwc = dep->dwc;

	if (FUNC1(dwc->dev, !(dep->flags & DWC3_EP_ENABLED),
					"%s is already disabled\n",
					dep->name))
		return 0;

	FUNC3(&dwc->lock, flags);
	ret = FUNC0(dep);
	FUNC4(&dwc->lock, flags);

	return ret;
}