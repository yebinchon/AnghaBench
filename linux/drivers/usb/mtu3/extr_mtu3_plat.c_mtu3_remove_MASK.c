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
struct ssusb_mtk {int dr_mode; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  USB_DR_MODE_HOST 130 
#define  USB_DR_MODE_OTG 129 
#define  USB_DR_MODE_PERIPHERAL 128 
 struct ssusb_mtk* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC4 (struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC6 (struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC7 (struct ssusb_mtk*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct ssusb_mtk *ssusb = FUNC0(pdev);

	switch (ssusb->dr_mode) {
	case USB_DR_MODE_PERIPHERAL:
		FUNC4(ssusb);
		break;
	case USB_DR_MODE_HOST:
		FUNC5(ssusb);
		break;
	case USB_DR_MODE_OTG:
		FUNC6(ssusb);
		FUNC4(ssusb);
		FUNC5(ssusb);
		break;
	default:
		return -EINVAL;
	}

	FUNC7(ssusb);
	FUNC2(&pdev->dev);
	FUNC1(&pdev->dev);
	FUNC3(ssusb);

	return 0;
}