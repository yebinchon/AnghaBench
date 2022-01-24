#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int regshift; int fifosize; int flags; int irq; int line; int uartclk; int /*<<< orphan*/  membase; int /*<<< orphan*/  iotype; int /*<<< orphan*/  type; TYPE_3__* dev; int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int capabilities; TYPE_1__ port; } ;
struct bcm2835aux_data {int line; int /*<<< orphan*/  clk; TYPE_2__ uart; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  PORT_16550 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int UART_CAP_FIFO ; 
 int UART_CAP_MINI ; 
 int UPF_FIXED_PORT ; 
 int UPF_FIXED_TYPE ; 
 int UPF_SHARE_IRQ ; 
 int UPF_SKIP_TEST ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct resource*) ; 
 struct bcm2835aux_data* FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct bcm2835aux_data*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct bcm2835aux_data *data;
	struct resource *res;
	int ret;

	/* allocate the custom structure */
	data = FUNC7(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	/* initialize data */
	FUNC13(&data->uart.port.lock);
	data->uart.capabilities = UART_CAP_FIFO | UART_CAP_MINI;
	data->uart.port.dev = &pdev->dev;
	data->uart.port.regshift = 2;
	data->uart.port.type = PORT_16550;
	data->uart.port.iotype = UPIO_MEM;
	data->uart.port.fifosize = 8;
	data->uart.port.flags = UPF_SHARE_IRQ |
				UPF_FIXED_PORT |
				UPF_FIXED_TYPE |
				UPF_SKIP_TEST;

	/* get the clock - this also enables the HW */
	data->clk = FUNC5(&pdev->dev, NULL);
	ret = FUNC0(data->clk);
	if (ret) {
		FUNC4(&pdev->dev, "could not get clk: %d\n", ret);
		return ret;
	}

	/* get the interrupt */
	ret = FUNC9(pdev, 0);
	if (ret < 0)
		return ret;
	data->uart.port.irq = ret;

	/* map the main registers */
	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC4(&pdev->dev, "memory resource not found");
		return -EINVAL;
	}
	data->uart.port.membase = FUNC6(&pdev->dev, res);
	ret = FUNC0(data->uart.port.membase);
	if (ret)
		return ret;

	/* Check for a fixed line number */
	ret = FUNC8(pdev->dev.of_node, "serial");
	if (ret >= 0)
		data->uart.port.line = ret;

	/* enable the clock as a last step */
	ret = FUNC3(data->clk);
	if (ret) {
		FUNC4(&pdev->dev, "unable to enable uart clock - %d\n",
			ret);
		return ret;
	}

	/* the HW-clock divider for bcm2835aux is 8,
	 * but 8250 expects a divider of 16,
	 * so we have to multiply the actual clock by 2
	 * to get identical baudrates.
	 */
	data->uart.port.uartclk = FUNC2(data->clk) * 2;

	/* register the port */
	ret = FUNC12(&data->uart);
	if (ret < 0) {
		FUNC4(&pdev->dev, "unable to register 8250 port - %d\n",
			ret);
		goto dis_clk;
	}
	data->line = ret;

	FUNC11(pdev, data);

	return 0;

dis_clk:
	FUNC1(data->clk);
	return ret;
}