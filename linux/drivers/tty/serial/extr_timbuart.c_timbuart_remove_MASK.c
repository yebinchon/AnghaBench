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
struct timbuart_port {int /*<<< orphan*/  port; int /*<<< orphan*/  tasklet; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timbuart_port*) ; 
 struct timbuart_port* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timbuart_driver ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	struct timbuart_port *uart = FUNC1(dev);

	FUNC2(&uart->tasklet);
	FUNC3(&timbuart_driver, &uart->port);
	FUNC4(&timbuart_driver);
	FUNC0(uart);

	return 0;
}