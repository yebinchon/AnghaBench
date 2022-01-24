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
struct platform_device {size_t id; } ;
struct mxs_auart_port {int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  clk; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  auart_driver ; 
 int /*<<< orphan*/ ** auart_port ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct mxs_auart_port*) ; 
 struct mxs_auart_port* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct mxs_auart_port *s = FUNC3(pdev);

	FUNC4(&auart_driver, &s->port);
	auart_port[pdev->id] = NULL;
	FUNC2(s);
	if (FUNC1(s)) {
		FUNC0(s->clk);
		FUNC0(s->clk_ahb);
	}

	return 0;
}