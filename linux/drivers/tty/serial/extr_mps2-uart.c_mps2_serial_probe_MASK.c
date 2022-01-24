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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mps2_uart_port {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mps2_uart_port* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct platform_device*,struct mps2_uart_port*) ; 
 int FUNC2 (struct platform_device*,struct mps2_uart_port*) ; 
 int /*<<< orphan*/  mps2_uart_driver ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct mps2_uart_port*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct mps2_uart_port *mps_port;
	int ret;

	mps_port = FUNC0(&pdev->dev, sizeof(struct mps2_uart_port), GFP_KERNEL);

        if (!mps_port)
                return -ENOMEM;

	ret = FUNC2(pdev, mps_port);
	if (ret)
		return ret;

	ret = FUNC1(pdev, mps_port);
	if (ret)
		return ret;

	ret = FUNC4(&mps2_uart_driver, &mps_port->port);
	if (ret)
		return ret;

	FUNC3(pdev, mps_port);

	return 0;
}