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
struct uart_port {int dummy; } ;
struct platform_device {int dummy; } ;
struct pic32_sport {size_t idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pic32_sport*) ; 
 int /*<<< orphan*/ ** pic32_sports ; 
 int /*<<< orphan*/  pic32_uart_driver ; 
 struct uart_port* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 struct pic32_sport* FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct uart_port *port = FUNC1(pdev);
	struct pic32_sport *sport = FUNC3(port);

	FUNC4(&pic32_uart_driver, port);
	FUNC0(sport);
	FUNC2(pdev, NULL);
	pic32_sports[sport->idx] = NULL;

	/* automatic unroll of sport and gpios */
	return 0;
}