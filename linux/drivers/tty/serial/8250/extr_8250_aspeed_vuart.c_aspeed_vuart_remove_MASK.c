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
struct platform_device {int dummy; } ;
struct aspeed_vuart {int /*<<< orphan*/  clk; TYPE_1__* dev; int /*<<< orphan*/  line; int /*<<< orphan*/  unthrottle_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  aspeed_vuart_attr_group ; 
 int /*<<< orphan*/  FUNC0 (struct aspeed_vuart*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct aspeed_vuart* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct aspeed_vuart *vuart = FUNC3(pdev);

	FUNC2(&vuart->unthrottle_timer);
	FUNC0(vuart, false);
	FUNC4(vuart->line);
	FUNC5(&vuart->dev->kobj, &aspeed_vuart_attr_group);
	FUNC1(vuart->clk);

	return 0;
}