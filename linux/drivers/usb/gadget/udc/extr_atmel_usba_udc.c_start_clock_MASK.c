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
struct usba_udc {int clocked; int /*<<< orphan*/  pclk; int /*<<< orphan*/  hclk; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct usba_udc *udc)
{
	int ret;

	if (udc->clocked)
		return 0;

	FUNC2(&udc->pdev->dev);

	ret = FUNC1(udc->pclk);
	if (ret)
		return ret;
	ret = FUNC1(udc->hclk);
	if (ret) {
		FUNC0(udc->pclk);
		return ret;
	}

	udc->clocked = true;
	return 0;
}