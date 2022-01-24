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
struct vudc {int /*<<< orphan*/  gadget; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vudc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vudc*) ; 
 struct vudc* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct platform_device *pdev)
{
	struct vudc *udc = FUNC2(pdev);

	FUNC3(&udc->gadget);
	FUNC0(udc);
	FUNC1(udc);
	return 0;
}