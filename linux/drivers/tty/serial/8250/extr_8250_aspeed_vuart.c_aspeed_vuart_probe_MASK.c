#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int mapbase; int custom_divisor; int regshift; int fifosize; int line; int uartclk; int flags; int /*<<< orphan*/  irq; int /*<<< orphan*/  type; int /*<<< orphan*/  iotype; int /*<<< orphan*/  handle_irq; int /*<<< orphan*/  irqflags; TYPE_2__* dev; int /*<<< orphan*/  status; int /*<<< orphan*/  unthrottle; int /*<<< orphan*/  throttle; int /*<<< orphan*/  shutdown; int /*<<< orphan*/  startup; int /*<<< orphan*/  mapsize; int /*<<< orphan*/  membase; struct aspeed_vuart* private_data; } ;
struct uart_8250_port {TYPE_1__ port; int /*<<< orphan*/  capabilities; } ;
struct resource {int start; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct aspeed_vuart {int line; TYPE_2__* dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; int /*<<< orphan*/  unthrottle_timer; } ;
typedef  int /*<<< orphan*/  port ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_16550A ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_CAP_AFE ; 
 int /*<<< orphan*/  UART_CAP_FIFO ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_FIXED_PORT ; 
 int UPF_FIXED_TYPE ; 
 int UPF_NO_THRE_TEST ; 
 int UPF_SHARE_IRQ ; 
 int UPF_SKIP_TEST ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  UPSTAT_SYNC_FIFO ; 
 int /*<<< orphan*/  aspeed_vuart_attr_group ; 
 int /*<<< orphan*/  aspeed_vuart_handle_irq ; 
 int /*<<< orphan*/  FUNC2 (struct aspeed_vuart*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aspeed_vuart*,int) ; 
 int /*<<< orphan*/  aspeed_vuart_shutdown ; 
 int /*<<< orphan*/  aspeed_vuart_startup ; 
 int /*<<< orphan*/  aspeed_vuart_throttle ; 
 int /*<<< orphan*/  aspeed_vuart_unthrottle ; 
 int /*<<< orphan*/  aspeed_vuart_unthrottle_exp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct resource*) ; 
 struct aspeed_vuart* FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct device_node*,char*) ; 
 scalar_t__ FUNC15 (struct device_node*,char*) ; 
 scalar_t__ FUNC16 (struct device_node*,char*,int*) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct aspeed_vuart*) ; 
 int /*<<< orphan*/  FUNC19 (struct resource*) ; 
 int FUNC20 (struct uart_8250_port*) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct uart_8250_port port;
	struct aspeed_vuart *vuart;
	struct device_node *np;
	struct resource *res;
	u32 clk, prop;
	int rc;

	np = pdev->dev.of_node;

	vuart = FUNC10(&pdev->dev, sizeof(*vuart), GFP_KERNEL);
	if (!vuart)
		return -ENOMEM;

	vuart->dev = &pdev->dev;
	FUNC23(&vuart->unthrottle_timer, aspeed_vuart_unthrottle_exp, 0);

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	vuart->regs = FUNC9(&pdev->dev, res);
	if (FUNC0(vuart->regs))
		return FUNC1(vuart->regs);

	FUNC13(&port, 0, sizeof(port));
	port.port.private_data = vuart;
	port.port.membase = vuart->regs;
	port.port.mapbase = res->start;
	port.port.mapsize = FUNC19(res);
	port.port.startup = aspeed_vuart_startup;
	port.port.shutdown = aspeed_vuart_shutdown;
	port.port.throttle = aspeed_vuart_throttle;
	port.port.unthrottle = aspeed_vuart_unthrottle;
	port.port.status = UPSTAT_SYNC_FIFO;
	port.port.dev = &pdev->dev;

	rc = FUNC21(&vuart->dev->kobj, &aspeed_vuart_attr_group);
	if (rc < 0)
		return rc;

	if (FUNC16(np, "clock-frequency", &clk)) {
		vuart->clk = FUNC8(&pdev->dev, NULL);
		if (FUNC0(vuart->clk)) {
			FUNC7(&pdev->dev,
				"clk or clock-frequency not defined\n");
			rc = FUNC1(vuart->clk);
			goto err_sysfs_remove;
		}

		rc = FUNC6(vuart->clk);
		if (rc < 0)
			goto err_sysfs_remove;

		clk = FUNC5(vuart->clk);
	}

	/* If current-speed was set, then try not to change it. */
	if (FUNC16(np, "current-speed", &prop) == 0)
		port.port.custom_divisor = clk / (16 * prop);

	/* Check for shifted address mapping */
	if (FUNC16(np, "reg-offset", &prop) == 0)
		port.port.mapbase += prop;

	/* Check for registers offset within the devices address range */
	if (FUNC16(np, "reg-shift", &prop) == 0)
		port.port.regshift = prop;

	/* Check for fifo size */
	if (FUNC16(np, "fifo-size", &prop) == 0)
		port.port.fifosize = prop;

	/* Check for a fixed line number */
	rc = FUNC14(np, "serial");
	if (rc >= 0)
		port.port.line = rc;

	port.port.irq = FUNC12(np, 0);
	port.port.irqflags = IRQF_SHARED;
	port.port.handle_irq = aspeed_vuart_handle_irq;
	port.port.iotype = UPIO_MEM;
	port.port.type = PORT_16550A;
	port.port.uartclk = clk;
	port.port.flags = UPF_SHARE_IRQ | UPF_BOOT_AUTOCONF
		| UPF_FIXED_PORT | UPF_FIXED_TYPE | UPF_NO_THRE_TEST;

	if (FUNC15(np, "no-loopback-test"))
		port.port.flags |= UPF_SKIP_TEST;

	if (port.port.fifosize)
		port.capabilities = UART_CAP_FIFO;

	if (FUNC15(np, "auto-flow-control"))
		port.capabilities |= UART_CAP_AFE;

	rc = FUNC20(&port);
	if (rc < 0)
		goto err_clk_disable;

	vuart->line = rc;

	FUNC2(vuart, true);
	FUNC3(vuart, true);
	FUNC18(pdev, vuart);

	return 0;

err_clk_disable:
	FUNC4(vuart->clk);
	FUNC11(port.port.irq);
err_sysfs_remove:
	FUNC22(&vuart->dev->kobj, &aspeed_vuart_attr_group);
	return rc;
}