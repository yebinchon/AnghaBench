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
struct twl6030_usb {int /*<<< orphan*/  set_vbus_work; int /*<<< orphan*/  usb3v3; int /*<<< orphan*/  irq2; int /*<<< orphan*/  irq1; int /*<<< orphan*/  get_status_work; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_INT_MSK_LINE_C ; 
 int /*<<< orphan*/  REG_INT_MSK_STS_C ; 
 int /*<<< orphan*/  TWL6030_USBOTG_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct twl6030_usb*) ; 
 struct twl6030_usb* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct twl6030_usb *twl = FUNC3(pdev);

	FUNC0(&twl->get_status_work);
	FUNC5(TWL6030_USBOTG_INT_MASK,
		REG_INT_MSK_LINE_C);
	FUNC5(TWL6030_USBOTG_INT_MASK,
			REG_INT_MSK_STS_C);
	FUNC2(twl->irq1, twl);
	FUNC2(twl->irq2, twl);
	FUNC4(twl->usb3v3);
	FUNC1(&twl->set_vbus_work);

	return 0;
}