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
struct sprd_spi {int /*<<< orphan*/  src_clk; struct clk* clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  SPRD_SPI_DEFAULT_SOURCE ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*,struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev, struct sprd_spi *ss)
{
	struct clk *clk_spi, *clk_parent;

	clk_spi = FUNC6(&pdev->dev, "spi");
	if (FUNC0(clk_spi)) {
		FUNC5(&pdev->dev, "can't get the spi clock\n");
		clk_spi = NULL;
	}

	clk_parent = FUNC6(&pdev->dev, "source");
	if (FUNC0(clk_parent)) {
		FUNC5(&pdev->dev, "can't get the source clock\n");
		clk_parent = NULL;
	}

	ss->clk = FUNC6(&pdev->dev, "enable");
	if (FUNC0(ss->clk)) {
		FUNC4(&pdev->dev, "can't get the enable clock\n");
		return FUNC1(ss->clk);
	}

	if (!FUNC3(clk_spi, clk_parent))
		ss->src_clk = FUNC2(clk_spi);
	else
		ss->src_clk = SPRD_SPI_DEFAULT_SOURCE;

	return 0;
}