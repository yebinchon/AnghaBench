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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct at91_udc {int /*<<< orphan*/  iclk; int /*<<< orphan*/  fclk; int /*<<< orphan*/  lock; scalar_t__ driver; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct at91_udc* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct at91_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct at91_udc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct at91_udc *udc = FUNC3(pdev);
	unsigned long	flags;

	FUNC0("remove\n");

	FUNC8(&udc->gadget);
	if (udc->driver)
		return -EBUSY;

	FUNC6(&udc->lock, flags);
	FUNC4(udc, 0);
	FUNC7(&udc->lock, flags);

	FUNC2(&pdev->dev, 0);
	FUNC5(udc);
	FUNC1(udc->fclk);
	FUNC1(udc->iclk);

	return 0;
}