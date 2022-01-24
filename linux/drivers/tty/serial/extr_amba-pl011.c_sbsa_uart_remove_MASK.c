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
struct uart_amba_port {int /*<<< orphan*/  port; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  amba_reg ; 
 int /*<<< orphan*/  FUNC0 (struct uart_amba_port*) ; 
 struct uart_amba_port* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct uart_amba_port *uap = FUNC1(pdev);

	FUNC2(&amba_reg, &uap->port);
	FUNC0(uap);
	return 0;
}