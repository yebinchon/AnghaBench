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
struct TYPE_2__ {int /*<<< orphan*/  line; } ;
struct uart_qe_port {TYPE_1__ port; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_qe_port*) ; 
 struct uart_qe_port* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ucc_uart_driver ; 

__attribute__((used)) static int FUNC4(struct platform_device *ofdev)
{
	struct uart_qe_port *qe_port = FUNC2(ofdev);

	FUNC0(&ofdev->dev, "removing /dev/ttyQE%u\n", qe_port->port.line);

	FUNC3(&ucc_uart_driver, &qe_port->port);

	FUNC1(qe_port);

	return 0;
}