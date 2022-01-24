#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct uart_port {int custom_divisor; int flags; int iobase; int mapbase; int regshift; int fifosize; int line; int irq; int type; int uartclk; int /*<<< orphan*/  handle_irq; void* iotype; int /*<<< orphan*/  handle_break; TYPE_1__* dev; int /*<<< orphan*/  irqflags; int /*<<< orphan*/  mapsize; int /*<<< orphan*/  lock; } ;
struct resource {int start; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_serial_info {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SERIAL_8250_FSL ; 
 int EINVAL ; 
 int EPROBE_DEFER ; 
 scalar_t__ IORESOURCE_IO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  PORT_RT2880 129 
#define  PORT_TEGRA 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_FIXED_PORT ; 
 int UPF_FIXED_TYPE ; 
 int UPF_IOREMAP ; 
 int UPF_SHARE_IRQ ; 
 int UPF_SKIP_TEST ; 
 void* UPIO_AU ; 
 void* UPIO_MEM ; 
 void* UPIO_MEM16 ; 
 void* UPIO_MEM32 ; 
 void* UPIO_MEM32BE ; 
 void* UPIO_PORT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsl8250_handle_irq ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC11 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 scalar_t__ FUNC13 (struct device_node*,char*) ; 
 int FUNC14 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct device_node*,char*) ; 
 scalar_t__ FUNC16 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct resource*) ; 
 scalar_t__ FUNC23 (struct resource*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra_serial_handle_break ; 

__attribute__((used)) static int FUNC25(struct platform_device *ofdev,
			int type, struct uart_port *port,
			struct of_serial_info *info)
{
	struct resource resource;
	struct device_node *np = ofdev->dev.of_node;
	u32 clk, spd, prop;
	int ret, irq;

	FUNC9(port, 0, sizeof *port);

	FUNC18(&ofdev->dev);
	FUNC19(&ofdev->dev);

	if (FUNC16(np, "clock-frequency", &clk)) {

		/* Get clk rate through clk driver if present */
		info->clk = FUNC7(&ofdev->dev, NULL);
		if (FUNC1(info->clk)) {
			ret = FUNC2(info->clk);
			if (ret != -EPROBE_DEFER)
				FUNC6(&ofdev->dev,
					 "failed to get clock: %d\n", ret);
			goto err_pmruntime;
		}

		ret = FUNC5(info->clk);
		if (ret < 0)
			goto err_pmruntime;

		clk = FUNC4(info->clk);
	}
	/* If current-speed was set, then try not to change it. */
	if (FUNC16(np, "current-speed", &spd) == 0)
		port->custom_divisor = clk / (16 * spd);

	ret = FUNC10(np, 0, &resource);
	if (ret) {
		FUNC6(&ofdev->dev, "invalid address\n");
		goto err_unprepare;
	}

	port->flags = UPF_SHARE_IRQ | UPF_BOOT_AUTOCONF | UPF_FIXED_PORT |
				  UPF_FIXED_TYPE;
	FUNC24(&port->lock);

	if (FUNC23(&resource) == IORESOURCE_IO) {
		port->iotype = UPIO_PORT;
		port->iobase = resource.start;
	} else {
		port->mapbase = resource.start;
		port->mapsize = FUNC22(&resource);

		/* Check for shifted address mapping */
		if (FUNC16(np, "reg-offset", &prop) == 0)
			port->mapbase += prop;

		port->iotype = UPIO_MEM;
		if (FUNC16(np, "reg-io-width", &prop) == 0) {
			switch (prop) {
			case 1:
				port->iotype = UPIO_MEM;
				break;
			case 2:
				port->iotype = UPIO_MEM16;
				break;
			case 4:
				port->iotype = FUNC12(np) ?
					       UPIO_MEM32BE : UPIO_MEM32;
				break;
			default:
				FUNC6(&ofdev->dev, "unsupported reg-io-width (%d)\n",
					 prop);
				ret = -EINVAL;
				goto err_unprepare;
			}
		}
		port->flags |= UPF_IOREMAP;
	}

	/* Compatibility with the deprecated pxa driver and 8250_pxa drivers. */
	if (FUNC13(np, "mrvl,mmp-uart"))
		port->regshift = 2;

	/* Check for registers offset within the devices address range */
	if (FUNC16(np, "reg-shift", &prop) == 0)
		port->regshift = prop;

	/* Check for fifo size */
	if (FUNC16(np, "fifo-size", &prop) == 0)
		port->fifosize = prop;

	/* Check for a fixed line number */
	ret = FUNC11(np, "serial");
	if (ret >= 0)
		port->line = ret;

	irq = FUNC14(np, 0);
	if (irq < 0) {
		if (irq == -EPROBE_DEFER) {
			ret = -EPROBE_DEFER;
			goto err_unprepare;
		}
		/* IRQ support not mandatory */
		irq = 0;
	}

	port->irq = irq;

	info->rst = FUNC8(&ofdev->dev, NULL);
	if (FUNC1(info->rst)) {
		ret = FUNC2(info->rst);
		goto err_unprepare;
	}

	ret = FUNC21(info->rst);
	if (ret)
		goto err_unprepare;

	port->type = type;
	port->uartclk = clk;
	port->irqflags |= IRQF_SHARED;

	if (FUNC15(np, "no-loopback-test"))
		port->flags |= UPF_SKIP_TEST;

	port->dev = &ofdev->dev;

	switch (type) {
	case PORT_TEGRA:
		port->handle_break = tegra_serial_handle_break;
		break;

	case PORT_RT2880:
		port->iotype = UPIO_AU;
		break;
	}

	if (FUNC0(CONFIG_SERIAL_8250_FSL) &&
	    (FUNC13(np, "fsl,ns16550") ||
	     FUNC13(np, "fsl,16550-FIFO64")))
		port->handle_irq = fsl8250_handle_irq;

	return 0;
err_unprepare:
	FUNC3(info->clk);
err_pmruntime:
	FUNC20(&ofdev->dev);
	FUNC17(&ofdev->dev);
	return ret;
}