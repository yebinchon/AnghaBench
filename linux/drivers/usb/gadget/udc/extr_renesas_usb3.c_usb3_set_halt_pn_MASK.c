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
struct renesas_usb3_ep {int halt; int /*<<< orphan*/  wedge; int /*<<< orphan*/  num; } ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PN_CON_EN ; 
 int /*<<< orphan*/  USB3_PN_CON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct renesas_usb3* FUNC2 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC6 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC7 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct renesas_usb3_ep *usb3_ep, bool halt,
			    bool is_clear_feature)
{
	struct renesas_usb3 *usb3 = FUNC2(usb3_ep);
	unsigned long flags;

	FUNC0(&usb3->lock, flags);
	if (!FUNC3(usb3, usb3_ep->num)) {
		usb3_ep->halt = halt;
		if (halt) {
			FUNC5(usb3);
		} else if (!is_clear_feature || !usb3_ep->wedge) {
			FUNC4(usb3);
			FUNC7(usb3, PN_CON_EN, USB3_PN_CON);
			FUNC6(usb3);
		}
	}
	FUNC1(&usb3->lock, flags);

	return 0;
}