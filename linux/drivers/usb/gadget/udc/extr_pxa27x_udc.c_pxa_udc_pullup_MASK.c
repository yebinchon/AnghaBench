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
struct pxa_udc {int /*<<< orphan*/  udc_command; int /*<<< orphan*/  gpiod; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_udc*,int) ; 
 scalar_t__ FUNC1 (struct pxa_udc*) ; 
 scalar_t__ FUNC2 (struct pxa_udc*) ; 
 struct pxa_udc* FUNC3 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_udc*) ; 

__attribute__((used)) static int FUNC6(struct usb_gadget *_gadget, int is_active)
{
	struct pxa_udc *udc = FUNC3(_gadget);

	if (!udc->gpiod && !udc->udc_command)
		return -EOPNOTSUPP;

	FUNC0(udc, is_active);

	if (FUNC2(udc))
		FUNC5(udc);
	if (FUNC1(udc))
		FUNC4(udc);
	return 0;
}