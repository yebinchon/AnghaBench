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
struct usb_gadget {int dummy; } ;
struct dwc3 {int /*<<< orphan*/  ev_buf; int /*<<< orphan*/  irq_gadget; int /*<<< orphan*/  lock; int /*<<< orphan*/ * gadget_driver; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dwc3* FUNC2 (struct usb_gadget*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct usb_gadget *g)
{
	struct dwc3		*dwc = FUNC2(g);
	unsigned long		flags;

	FUNC4(&dwc->lock, flags);

	if (FUNC3(dwc->dev))
		goto out;

	FUNC0(dwc);

out:
	dwc->gadget_driver	= NULL;
	FUNC5(&dwc->lock, flags);

	FUNC1(dwc->irq_gadget, dwc->ev_buf);

	return 0;
}