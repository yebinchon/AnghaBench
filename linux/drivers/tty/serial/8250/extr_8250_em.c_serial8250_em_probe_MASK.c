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
typedef  int /*<<< orphan*/  up ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  serial_out; int /*<<< orphan*/  serial_in; int /*<<< orphan*/  iotype; int /*<<< orphan*/  uartclk; struct serial8250_em_priv* private_data; int /*<<< orphan*/ * dev; int /*<<< orphan*/  type; int /*<<< orphan*/  irq; int /*<<< orphan*/  mapbase; } ;
struct uart_8250_port {int /*<<< orphan*/  dl_write; int /*<<< orphan*/  dl_read; TYPE_1__ port; } ;
struct serial8250_em_priv {int line; int /*<<< orphan*/  sclk; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_UNKNOWN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_FIXED_PORT ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct serial8250_em_priv* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct serial8250_em_priv*) ; 
 int /*<<< orphan*/  serial8250_em_serial_dl_read ; 
 int /*<<< orphan*/  serial8250_em_serial_dl_write ; 
 int /*<<< orphan*/  serial8250_em_serial_in ; 
 int /*<<< orphan*/  serial8250_em_serial_out ; 
 int FUNC11 (struct uart_8250_port*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct resource *regs = FUNC9(pdev, IORESOURCE_MEM, 0);
	struct resource *irq = FUNC9(pdev, IORESOURCE_IRQ, 0);
	struct serial8250_em_priv *priv;
	struct uart_8250_port up;
	int ret;

	if (!regs || !irq) {
		FUNC5(&pdev->dev, "missing registers or irq\n");
		return -EINVAL;
	}

	priv = FUNC7(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->sclk = FUNC6(&pdev->dev, "sclk");
	if (FUNC0(priv->sclk)) {
		FUNC5(&pdev->dev, "unable to get clock\n");
		return FUNC1(priv->sclk);
	}

	FUNC8(&up, 0, sizeof(up));
	up.port.mapbase = regs->start;
	up.port.irq = irq->start;
	up.port.type = PORT_UNKNOWN;
	up.port.flags = UPF_BOOT_AUTOCONF | UPF_FIXED_PORT | UPF_IOREMAP;
	up.port.dev = &pdev->dev;
	up.port.private_data = priv;

	FUNC4(priv->sclk);
	up.port.uartclk = FUNC3(priv->sclk);

	up.port.iotype = UPIO_MEM32;
	up.port.serial_in = serial8250_em_serial_in;
	up.port.serial_out = serial8250_em_serial_out;
	up.dl_read = serial8250_em_serial_dl_read;
	up.dl_write = serial8250_em_serial_dl_write;

	ret = FUNC11(&up);
	if (ret < 0) {
		FUNC5(&pdev->dev, "unable to register 8250 port\n");
		FUNC2(priv->sclk);
		return ret;
	}

	priv->line = ret;
	FUNC10(pdev, priv);
	return 0;
}