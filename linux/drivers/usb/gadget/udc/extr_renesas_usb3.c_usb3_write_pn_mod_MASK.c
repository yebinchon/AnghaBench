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
typedef  int /*<<< orphan*/  u32 ;
struct usb_endpoint_descriptor {int dummy; } ;
struct renesas_usb3_ep {scalar_t__ dir_in; } ;
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PN_MOD_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB3_PN_MOD ; 
 struct renesas_usb3* FUNC2 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_endpoint_descriptor const*) ; 

__attribute__((used)) static void FUNC6(struct renesas_usb3_ep *usb3_ep,
			      const struct usb_endpoint_descriptor *desc)
{
	struct renesas_usb3 *usb3 = FUNC2(usb3_ep);
	u32 val = 0;

	val |= usb3_ep->dir_in ? PN_MOD_DIR : 0;
	val |= FUNC1(FUNC5(desc));
	val |= FUNC0(FUNC4(desc));
	FUNC3(usb3, val, USB3_PN_MOD);
}