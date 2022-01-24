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
typedef  scalar_t__ u32 ;
struct platform_device {int dummy; } ;
struct nbu2ss_udc {int vbus_active; scalar_t__ linux_suspended; int /*<<< orphan*/  devstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_STATE_POWERED ; 
 int /*<<< orphan*/  FUNC0 (struct nbu2ss_udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nbu2ss_udc*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct nbu2ss_udc* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  vbus_gpio ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	u32	data;
	struct nbu2ss_udc	*udc;

	udc = FUNC3(pdev);
	if (!udc)
		return 0;

	data = FUNC2(vbus_gpio);
	if (data) {
		udc->vbus_active = 1;
		udc->devstate = USB_STATE_POWERED;
		FUNC0(udc);
		FUNC1(udc, 1);
	}

	udc->linux_suspended = 0;

	return 0;
}