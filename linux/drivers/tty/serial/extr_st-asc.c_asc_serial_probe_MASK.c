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
struct platform_device {int dummy; } ;
struct asc_port {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct asc_port*,struct platform_device*) ; 
 struct asc_port* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  asc_uart_driver ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	int ret;
	struct asc_port *ascport;

	ascport = FUNC1(pdev);
	if (!ascport)
		return -ENODEV;

	ret = FUNC0(ascport, pdev);
	if (ret)
		return ret;

	ret = FUNC3(&asc_uart_driver, &ascport->port);
	if (ret)
		return ret;

	FUNC2(pdev, &ascport->port);

	return 0;
}