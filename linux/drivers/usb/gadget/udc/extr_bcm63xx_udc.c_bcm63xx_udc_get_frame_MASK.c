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
struct bcm63xx_udc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBD_STATUS_REG ; 
 int USBD_STATUS_SOF_MASK ; 
 int USBD_STATUS_SOF_SHIFT ; 
 struct bcm63xx_udc* FUNC0 (struct usb_gadget*) ; 
 int FUNC1 (struct bcm63xx_udc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *gadget)
{
	struct bcm63xx_udc *udc = FUNC0(gadget);

	return (FUNC1(udc, USBD_STATUS_REG) &
		USBD_STATUS_SOF_MASK) >> USBD_STATUS_SOF_SHIFT;
}