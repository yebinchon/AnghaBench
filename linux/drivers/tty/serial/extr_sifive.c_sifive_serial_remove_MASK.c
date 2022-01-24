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
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct sifive_serial_port {int /*<<< orphan*/  clk_notifier; int /*<<< orphan*/  clk; TYPE_1__ port; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sifive_serial_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sifive_serial_port*) ; 
 struct sifive_serial_port* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  sifive_serial_uart_driver ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	struct sifive_serial_port *ssp = FUNC3(dev);

	FUNC0(ssp);
	FUNC4(&sifive_serial_uart_driver, &ssp->port);
	FUNC2(ssp->port.irq, ssp);
	FUNC1(ssp->clk, &ssp->clk_notifier);

	return 0;
}