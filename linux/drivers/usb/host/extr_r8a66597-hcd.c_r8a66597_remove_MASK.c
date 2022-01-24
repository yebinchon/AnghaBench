#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {int dummy; } ;
struct r8a66597 {int /*<<< orphan*/  clk; TYPE_1__* pdata; int /*<<< orphan*/  reg; int /*<<< orphan*/  rh_timer; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ on_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct r8a66597* FUNC3 (struct platform_device*) ; 
 struct usb_hcd* FUNC4 (struct r8a66597*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct r8a66597		*r8a66597 = FUNC3(pdev);
	struct usb_hcd		*hcd = FUNC4(r8a66597);

	FUNC1(&r8a66597->rh_timer);
	FUNC6(hcd);
	FUNC2(r8a66597->reg);
	if (r8a66597->pdata->on_chip)
		FUNC0(r8a66597->clk);
	FUNC5(hcd);
	return 0;
}