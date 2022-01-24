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
struct renesas_usb3_ep {scalar_t__ num; } ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PN_CON_EN ; 
 int /*<<< orphan*/  USB3_PN_CON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct renesas_usb3* FUNC2 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC6 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct renesas_usb3_ep* FUNC7 (struct usb_ep*) ; 

__attribute__((used)) static void FUNC8(struct usb_ep *_ep)
{
	struct renesas_usb3_ep *usb3_ep = FUNC7(_ep);
	struct renesas_usb3 *usb3 = FUNC2(usb3_ep);
	unsigned long flags;

	if (usb3_ep->num) {
		FUNC0(&usb3->lock, flags);
		if (!FUNC4(usb3, usb3_ep->num)) {
			FUNC5(usb3);
			FUNC6(usb3, PN_CON_EN, USB3_PN_CON);
		}
		FUNC1(&usb3->lock, flags);
	} else {
		FUNC3(usb3);
	}
}