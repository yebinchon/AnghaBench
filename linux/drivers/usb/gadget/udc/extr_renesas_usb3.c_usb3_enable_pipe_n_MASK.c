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
struct usb_endpoint_descriptor {int dummy; } ;
struct renesas_usb3_ep {int /*<<< orphan*/  num; int /*<<< orphan*/  dir_in; } ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PN_CON_EN ; 
 int /*<<< orphan*/  USB3_PN_CON ; 
 int /*<<< orphan*/  USB3_PN_RAMMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3_ep*,struct usb_endpoint_descriptor const*) ; 
 struct renesas_usb3* FUNC3 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC6 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct renesas_usb3_ep*,struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_endpoint_descriptor const*) ; 

__attribute__((used)) static int FUNC10(struct renesas_usb3_ep *usb3_ep,
			      const struct usb_endpoint_descriptor *desc)
{
	struct renesas_usb3 *usb3 = FUNC3(usb3_ep);
	unsigned long flags;

	usb3_ep->dir_in = FUNC9(desc);

	FUNC0(&usb3->lock, flags);
	if (!FUNC4(usb3, usb3_ep->num)) {
		FUNC8(usb3_ep, desc);
		FUNC7(usb3, FUNC2(usb3_ep, desc),
			   USB3_PN_RAMMAP);
		FUNC5(usb3);
		FUNC6(usb3, PN_CON_EN, USB3_PN_CON);
	}
	FUNC1(&usb3->lock, flags);

	return 0;
}