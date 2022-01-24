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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  line; } ;
struct dw8250_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  pclk; int /*<<< orphan*/  rst; TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dw8250_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct dw8250_data *data = FUNC2(pdev);
	struct device *dev = &pdev->dev;

	FUNC4(dev);

	FUNC7(data->data.line);

	FUNC6(data->rst);

	if (!FUNC0(data->pclk))
		FUNC1(data->pclk);

	if (!FUNC0(data->clk))
		FUNC1(data->clk);

	FUNC3(dev);
	FUNC5(dev);

	return 0;
}