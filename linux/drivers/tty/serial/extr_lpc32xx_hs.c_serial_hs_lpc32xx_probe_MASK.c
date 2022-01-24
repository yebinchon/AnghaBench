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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int irq; int regshift; int flags; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  lock; int /*<<< orphan*/  line; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * dev; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  iotype; int /*<<< orphan*/ * membase; } ;
struct lpc32xx_hsuart_port {TYPE_1__ port; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  LPC32XX_MAIN_OSC_FREQ ; 
 size_t MAX_PORTS ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_FIXED_PORT ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 struct lpc32xx_hsuart_port* lpc32xx_hs_ports ; 
 int /*<<< orphan*/  lpc32xx_hs_reg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lpc32xx_hsuart_port*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct lpc32xx_hsuart_port*) ; 
 int /*<<< orphan*/  serial_lpc32xx_pops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 size_t uarts_registered ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct lpc32xx_hsuart_port *p = &lpc32xx_hs_ports[uarts_registered];
	int ret = 0;
	struct resource *res;

	if (uarts_registered >= MAX_PORTS) {
		FUNC0(&pdev->dev,
			"Error: Number of possible ports exceeded (%d)!\n",
			uarts_registered + 1);
		return -ENXIO;
	}

	FUNC2(p, 0, sizeof(*p));

	res = FUNC4(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC0(&pdev->dev,
			"Error getting mem resource for HS UART port %d\n",
			uarts_registered);
		return -ENXIO;
	}
	p->port.mapbase = res->start;
	p->port.membase = NULL;

	ret = FUNC3(pdev, 0);
	if (ret < 0)
		return ret;
	p->port.irq = ret;

	p->port.iotype = UPIO_MEM32;
	p->port.uartclk = LPC32XX_MAIN_OSC_FREQ;
	p->port.regshift = 2;
	p->port.flags = UPF_BOOT_AUTOCONF | UPF_FIXED_PORT | UPF_IOREMAP;
	p->port.dev = &pdev->dev;
	p->port.ops = &serial_lpc32xx_pops;
	p->port.line = uarts_registered++;
	FUNC6(&p->port.lock);

	/* send port to loopback mode by default */
	FUNC1(p->port.mapbase, 1);

	ret = FUNC7(&lpc32xx_hs_reg, &p->port);

	FUNC5(pdev, p);

	return ret;
}