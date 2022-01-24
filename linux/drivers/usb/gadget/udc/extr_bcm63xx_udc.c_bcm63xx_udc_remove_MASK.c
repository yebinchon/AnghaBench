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
struct platform_device {int dummy; } ;
struct bcm63xx_udc {int /*<<< orphan*/  driver; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm63xx_udc*) ; 
 struct bcm63xx_udc* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct bcm63xx_udc *udc = FUNC3(pdev);

	FUNC1(udc);
	FUNC4(&udc->gadget);
	FUNC0(udc->driver);

	FUNC2(udc);

	return 0;
}