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
struct renesas_usb3_ep {int halt; int /*<<< orphan*/  num; } ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PN_CON_EN ; 
 int /*<<< orphan*/  USB3_PN_CON ; 
 int /*<<< orphan*/  USB3_PN_INT_ENA ; 
 int /*<<< orphan*/  USB3_PN_RAMMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct renesas_usb3* FUNC3 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct renesas_usb3_ep *usb3_ep)
{
	struct renesas_usb3 *usb3 = FUNC3(usb3_ep);
	unsigned long flags;

	usb3_ep->halt = false;

	FUNC0(&usb3->lock, flags);
	if (!FUNC4(usb3, usb3_ep->num)) {
		FUNC5(usb3, 0, USB3_PN_INT_ENA);
		FUNC5(usb3, 0, USB3_PN_RAMMAP);
		FUNC2(usb3, PN_CON_EN, USB3_PN_CON);
	}
	FUNC1(&usb3->lock, flags);

	return 0;
}