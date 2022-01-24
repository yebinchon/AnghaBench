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
struct imx_port {int /*<<< orphan*/  clk_ipg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct imx_port* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct imx_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct imx_port *sport = FUNC1(dev);
	int ret;

	FUNC3(dev);

	ret = FUNC0(sport->clk_ipg);
	if (ret)
		return ret;

	FUNC2(sport);

	return 0;
}