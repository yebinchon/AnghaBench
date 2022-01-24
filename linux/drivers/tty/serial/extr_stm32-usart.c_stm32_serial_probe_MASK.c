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
struct stm32_usart_info {int dummy; } ;
struct stm32_port {scalar_t__ wakeirq; int /*<<< orphan*/  clk; int /*<<< orphan*/  port; struct stm32_usart_info* info; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct of_device_id* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct stm32_port*,struct platform_device*) ; 
 int /*<<< orphan*/  stm32_match ; 
 int FUNC13 (struct stm32_port*,struct platform_device*) ; 
 int FUNC14 (struct stm32_port*,struct platform_device*) ; 
 struct stm32_port* FUNC15 (struct platform_device*) ; 
 int /*<<< orphan*/  stm32_usart_driver ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct stm32_port *stm32port;
	int ret;

	stm32port = FUNC15(pdev);
	if (!stm32port)
		return -ENODEV;

	match = FUNC6(stm32_match, &pdev->dev);
	if (match && match->data)
		stm32port->info = (struct stm32_usart_info *)match->data;
	else
		return -EINVAL;

	ret = FUNC12(stm32port, pdev);
	if (ret)
		return ret;

	if (stm32port->wakeirq > 0) {
		ret = FUNC4(&pdev->dev, true);
		if (ret)
			goto err_uninit;

		ret = FUNC3(&pdev->dev,
						    stm32port->wakeirq);
		if (ret)
			goto err_nowup;

		FUNC5(&pdev->dev, false);
	}

	ret = FUNC16(&stm32_usart_driver, &stm32port->port);
	if (ret)
		goto err_wirq;

	ret = FUNC13(stm32port, pdev);
	if (ret)
		FUNC1(&pdev->dev, "interrupt mode used for rx (no dma)\n");

	ret = FUNC14(stm32port, pdev);
	if (ret)
		FUNC1(&pdev->dev, "interrupt mode used for tx (no dma)\n");

	FUNC7(pdev, &stm32port->port);

	FUNC9(&pdev->dev);
	FUNC11(&pdev->dev);
	FUNC8(&pdev->dev);
	FUNC10(&pdev->dev);

	return 0;

err_wirq:
	if (stm32port->wakeirq > 0)
		FUNC2(&pdev->dev);

err_nowup:
	if (stm32port->wakeirq > 0)
		FUNC4(&pdev->dev, false);

err_uninit:
	FUNC0(stm32port->clk);

	return ret;
}