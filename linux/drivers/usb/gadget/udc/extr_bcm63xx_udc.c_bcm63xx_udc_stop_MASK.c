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
struct bcm63xx_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm63xx_udc*,int) ; 
 struct bcm63xx_udc* FUNC1 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm63xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct usb_gadget *gadget)
{
	struct bcm63xx_udc *udc = FUNC1(gadget);
	unsigned long flags;

	FUNC4(&udc->lock, flags);

	udc->driver = NULL;

	/*
	 * If we switch the PHY too abruptly after dropping D+, the host
	 * will often complain:
	 *
	 *     hub 1-0:1.0: port 1 disabled by hub (EMI?), re-enabling...
	 */
	FUNC2(100);

	FUNC0(udc, false);
	FUNC3(udc, false);

	FUNC5(&udc->lock, flags);

	return 0;
}