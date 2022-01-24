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
struct isp1760_udc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_FRAMENUM ; 
 struct isp1760_udc* FUNC0 (struct usb_gadget*) ; 
 int FUNC1 (struct isp1760_udc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *gadget)
{
	struct isp1760_udc *udc = FUNC0(gadget);

	return FUNC1(udc, DC_FRAMENUM) & ((1 << 11) - 1);
}