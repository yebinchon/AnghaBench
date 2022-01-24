#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct r8a66597 {int /*<<< orphan*/  clk; TYPE_2__* pdata; int /*<<< orphan*/  ep0_req; TYPE_1__* ep; int /*<<< orphan*/  timer; int /*<<< orphan*/  gadget; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ on_chip; } ;
struct TYPE_3__ {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8a66597* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct r8a66597		*r8a66597 = FUNC2(pdev);

	FUNC4(&r8a66597->gadget);
	FUNC1(&r8a66597->timer);
	FUNC3(&r8a66597->ep[0].ep, r8a66597->ep0_req);

	if (r8a66597->pdata->on_chip) {
		FUNC0(r8a66597->clk);
	}

	return 0;
}