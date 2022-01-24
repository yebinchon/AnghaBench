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
struct usba_udc {int clocked; TYPE_1__* pdev; int /*<<< orphan*/  pclk; int /*<<< orphan*/  hclk; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct usba_udc *udc)
{
	if (!udc->clocked)
		return;

	FUNC0(udc->hclk);
	FUNC0(udc->pclk);

	udc->clocked = false;

	FUNC1(&udc->pdev->dev);
}