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
typedef  scalar_t__ u8 ;
struct usb_ctrlrequest {scalar_t__ wValue; } ;
struct mv_udc {int /*<<< orphan*/  usb_state; scalar_t__ dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_DIR_IN ; 
 int /*<<< orphan*/  USB_STATE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct mv_udc*) ; 
 scalar_t__ FUNC1 (struct mv_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mv_udc *udc, struct usb_ctrlrequest *setup)
{
	udc->dev_addr = (u8)setup->wValue;

	/* update usb state */
	udc->usb_state = USB_STATE_ADDRESS;

	if (FUNC1(udc, EP_DIR_IN, 0, true))
		FUNC0(udc);
}