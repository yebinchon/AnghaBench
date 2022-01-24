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
struct renesas_usb3 {int /*<<< orphan*/  ep0_req; int /*<<< orphan*/  gadget; int /*<<< orphan*/  role_sw; int /*<<< orphan*/  dentry; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_role ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct renesas_usb3* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct renesas_usb3 *usb3 = FUNC3(pdev);

	FUNC1(usb3->dentry);
	FUNC2(&pdev->dev, &dev_attr_role);

	FUNC7(usb3->role_sw);

	FUNC6(&usb3->gadget);
	FUNC5(usb3, &pdev->dev);

	FUNC0(usb3->ep0_req);
	FUNC4(&pdev->dev);

	return 0;
}