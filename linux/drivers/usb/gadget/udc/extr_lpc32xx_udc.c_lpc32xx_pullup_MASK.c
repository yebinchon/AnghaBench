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
struct lpc32xx_udc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpc32xx_udc*,int) ; 
 struct lpc32xx_udc* FUNC1 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *gadget, int is_on)
{
	struct lpc32xx_udc *udc = FUNC1(gadget);

	/* Doesn't need lock */
	FUNC0(udc, is_on);

	return 0;
}