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
struct TYPE_4__ {struct device* dev; } ;
struct s3c24xx_uart_port {TYPE_2__ port; int /*<<< orphan*/  baudclk_rate; struct clk* baudclk; TYPE_1__* cfg; struct s3c24xx_uart_info* info; } ;
struct s3c24xx_uart_info {unsigned int def_clk_sel; int num_clks; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int clk_sel; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int MAX_CLK_NAME_LENGTH ; 
 struct clk* FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct s3c24xx_uart_port *ourport)
{
	struct device *dev = ourport->port.dev;
	struct s3c24xx_uart_info *info = ourport->info;
	char clk_name[MAX_CLK_NAME_LENGTH];
	unsigned int clk_sel;
	struct clk *clk;
	int clk_num;
	int ret;

	clk_sel = ourport->cfg->clk_sel ? : info->def_clk_sel;
	for (clk_num = 0; clk_num < info->num_clks; clk_num++) {
		if (!(clk_sel & (1 << clk_num)))
			continue;

		FUNC6(clk_name, "clk_uart_baud%d", clk_num);
		clk = FUNC1(dev, clk_name);
		if (FUNC0(clk))
			continue;

		ret = FUNC3(clk);
		if (ret) {
			FUNC4(clk);
			continue;
		}

		ourport->baudclk = clk;
		ourport->baudclk_rate = FUNC2(clk);
		FUNC5(&ourport->port, clk_num);

		return 0;
	}

	return -EINVAL;
}