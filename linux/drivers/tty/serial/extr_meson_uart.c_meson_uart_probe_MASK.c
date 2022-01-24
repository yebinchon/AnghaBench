#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int flags; size_t line; int fifosize; int /*<<< orphan*/ * ops; scalar_t__ x_char; int /*<<< orphan*/  type; TYPE_1__* dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  mapsize; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  iotype; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {int id; TYPE_1__ dev; } ;

/* Variables and functions */
 int AML_UART_PORT_NUM ; 
 int AML_UART_PORT_OFFSET ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  PORT_MESON ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_LOW_LATENCY ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,size_t) ; 
 struct uart_port* FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct uart_port** meson_ports ; 
 int /*<<< orphan*/  meson_uart_driver ; 
 int /*<<< orphan*/  meson_uart_ops ; 
 int FUNC2 (struct platform_device*,struct uart_port*) ; 
 int FUNC3 (struct platform_device*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 
 int FUNC7 (scalar_t__,char*) ; 
 scalar_t__ FUNC8 (scalar_t__,char*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct uart_port*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct resource *res_mem, *res_irq;
	struct uart_port *port;
	int ret = 0;
	int id = -1;

	if (pdev->dev.of_node)
		pdev->id = FUNC7(pdev->dev.of_node, "serial");

	if (pdev->id < 0) {
		for (id = AML_UART_PORT_OFFSET; id < AML_UART_PORT_NUM; id++) {
			if (!meson_ports[id]) {
				pdev->id = id;
				break;
			}
		}
	}

	if (pdev->id < 0 || pdev->id >= AML_UART_PORT_NUM)
		return -EINVAL;

	res_mem = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!res_mem)
		return -ENODEV;

	res_irq = FUNC9(pdev, IORESOURCE_IRQ, 0);
	if (!res_irq)
		return -ENODEV;

	if (meson_ports[pdev->id]) {
		FUNC0(&pdev->dev, "port %d already allocated\n", pdev->id);
		return -EBUSY;
	}

	port = FUNC1(&pdev->dev, sizeof(struct uart_port), GFP_KERNEL);
	if (!port)
		return -ENOMEM;

	/* Use legacy way until all platforms switch to new bindings */
	if (FUNC8(pdev->dev.of_node, "amlogic,meson-uart"))
		ret = FUNC3(pdev, port);
	else
		ret = FUNC2(pdev, port);

	if (ret)
		return ret;

	port->iotype = UPIO_MEM;
	port->mapbase = res_mem->start;
	port->mapsize = FUNC11(res_mem);
	port->irq = res_irq->start;
	port->flags = UPF_BOOT_AUTOCONF | UPF_LOW_LATENCY;
	port->dev = &pdev->dev;
	port->line = pdev->id;
	port->type = PORT_MESON;
	port->x_char = 0;
	port->ops = &meson_uart_ops;
	port->fifosize = 64;

	meson_ports[pdev->id] = port;
	FUNC10(pdev, port);

	/* reset port before registering (and possibly registering console) */
	if (FUNC5(port) >= 0) {
		FUNC6(port);
		FUNC4(port);
	}

	ret = FUNC12(&meson_uart_driver, port);
	if (ret)
		meson_ports[pdev->id] = NULL;

	return ret;
}