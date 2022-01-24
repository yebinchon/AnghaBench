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
struct renesas_usb3_ep {scalar_t__ num; } ;
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int PN_CON_LAST ; 
 int FUNC0 (int) ; 
 int PX_CON_SEND ; 
 int USB3_P0_CON ; 
 int USB3_PN_CON ; 
 struct renesas_usb3* FUNC1 (struct renesas_usb3_ep*) ; 
 int FUNC2 (struct renesas_usb3*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*,int,int) ; 

__attribute__((used)) static void FUNC4(struct renesas_usb3_ep *usb3_ep, int bytes,
				 bool last)
{
	struct renesas_usb3 *usb3 = FUNC1(usb3_ep);
	u32 con_reg = usb3_ep->num ? USB3_PN_CON : USB3_P0_CON;
	u32 val = FUNC2(usb3, con_reg);

	val |= PX_CON_SEND | FUNC0(bytes);
	val |= (usb3_ep->num && last) ? PN_CON_LAST : 0;
	FUNC3(usb3, val, con_reg);
}