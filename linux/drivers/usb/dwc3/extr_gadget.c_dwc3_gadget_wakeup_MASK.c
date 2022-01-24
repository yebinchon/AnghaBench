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
struct dwc3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct dwc3*) ; 
 struct dwc3* FUNC1 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct usb_gadget *g)
{
	struct dwc3		*dwc = FUNC1(g);
	unsigned long		flags;
	int			ret;

	FUNC2(&dwc->lock, flags);
	ret = FUNC0(dwc);
	FUNC3(&dwc->lock, flags);

	return ret;
}