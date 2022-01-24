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
typedef  int u32 ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int PN_INT_BFRDY ; 
 int PN_INT_LSTTR ; 
 int /*<<< orphan*/  USB3_PN_INT_ENA ; 
 int /*<<< orphan*/  USB3_PN_INT_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*,int) ; 
 scalar_t__ FUNC4 (struct renesas_usb3*,int) ; 
 int FUNC5 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct renesas_usb3*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct renesas_usb3 *usb3, int num)
{
	u32 pn_int_sta;

	FUNC0(&usb3->lock);
	if (FUNC4(usb3, num) < 0) {
		FUNC1(&usb3->lock);
		return;
	}

	pn_int_sta = FUNC5(usb3, USB3_PN_INT_STA);
	pn_int_sta &= FUNC5(usb3, USB3_PN_INT_ENA);
	FUNC6(usb3, pn_int_sta, USB3_PN_INT_STA);
	FUNC1(&usb3->lock);
	if (pn_int_sta & PN_INT_LSTTR)
		FUNC3(usb3, num);
	if (pn_int_sta & PN_INT_BFRDY)
		FUNC2(usb3, num);
}