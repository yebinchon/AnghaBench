#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; int regshift; int line; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  membase; int /*<<< orphan*/  fifosize; TYPE_2__* dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  serial_in; int /*<<< orphan*/  serial_out; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  iotype; int /*<<< orphan*/  type; int /*<<< orphan*/  lock; } ;
struct uart_8250_port {int capabilities; TYPE_1__ port; int /*<<< orphan*/  tx_loadsz; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {struct ingenic_uart_config* data; } ;
struct ingenic_uart_data {int line; void* clk_module; void* clk_baud; } ;
struct ingenic_uart_config {int /*<<< orphan*/  tx_loadsz; int /*<<< orphan*/  fifosize; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  PORT_16550A ; 
 int FUNC1 (void*) ; 
 int UART_CAP_FIFO ; 
 int UART_CAP_RTOIE ; 
 int UPF_FIXED_TYPE ; 
 int UPF_IOREMAP ; 
 int UPF_SKIP_TEST ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 void* FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ingenic_uart_data* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ingenic_uart_serial_in ; 
 int /*<<< orphan*/  ingenic_uart_serial_out ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  of_match ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct ingenic_uart_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 int FUNC14 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct uart_8250_port uart = {};
	struct resource *regs = FUNC11(pdev, IORESOURCE_MEM, 0);
	struct resource *irq = FUNC11(pdev, IORESOURCE_IRQ, 0);
	struct ingenic_uart_data *data;
	const struct ingenic_uart_config *cdata;
	const struct of_device_id *match;
	int err, line;

	match = FUNC10(of_match, &pdev->dev);
	if (!match) {
		FUNC5(&pdev->dev, "Error: No device match found\n");
		return -ENODEV;
	}
	cdata = match->data;

	if (!regs || !irq) {
		FUNC5(&pdev->dev, "no registers/irq defined\n");
		return -EINVAL;
	}

	data = FUNC8(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC15(&uart.port.lock);
	uart.port.type = PORT_16550A;
	uart.port.flags = UPF_SKIP_TEST | UPF_IOREMAP | UPF_FIXED_TYPE;
	uart.port.iotype = UPIO_MEM;
	uart.port.mapbase = regs->start;
	uart.port.regshift = 2;
	uart.port.serial_out = ingenic_uart_serial_out;
	uart.port.serial_in = ingenic_uart_serial_in;
	uart.port.irq = irq->start;
	uart.port.dev = &pdev->dev;
	uart.port.fifosize = cdata->fifosize;
	uart.tx_loadsz = cdata->tx_loadsz;
	uart.capabilities = UART_CAP_FIFO | UART_CAP_RTOIE;

	/* Check for a fixed line number */
	line = FUNC9(pdev->dev.of_node, "serial");
	if (line >= 0)
		uart.port.line = line;

	uart.port.membase = FUNC7(&pdev->dev, regs->start,
					 FUNC13(regs));
	if (!uart.port.membase)
		return -ENOMEM;

	data->clk_module = FUNC6(&pdev->dev, "module");
	if (FUNC0(data->clk_module)) {
		err = FUNC1(data->clk_module);
		if (err != -EPROBE_DEFER)
			FUNC5(&pdev->dev,
				"unable to get module clock: %d\n", err);
		return err;
	}

	data->clk_baud = FUNC6(&pdev->dev, "baud");
	if (FUNC0(data->clk_baud)) {
		err = FUNC1(data->clk_baud);
		if (err != -EPROBE_DEFER)
			FUNC5(&pdev->dev,
				"unable to get baud clock: %d\n", err);
		return err;
	}

	err = FUNC4(data->clk_module);
	if (err) {
		FUNC5(&pdev->dev, "could not enable module clock: %d\n", err);
		goto out;
	}

	err = FUNC4(data->clk_baud);
	if (err) {
		FUNC5(&pdev->dev, "could not enable baud clock: %d\n", err);
		goto out_disable_moduleclk;
	}
	uart.port.uartclk = FUNC3(data->clk_baud);

	data->line = FUNC14(&uart);
	if (data->line < 0) {
		err = data->line;
		goto out_disable_baudclk;
	}

	FUNC12(pdev, data);
	return 0;

out_disable_baudclk:
	FUNC2(data->clk_baud);
out_disable_moduleclk:
	FUNC2(data->clk_module);
out:
	return err;
}