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
typedef  int /*<<< orphan*/  uart ;
struct TYPE_2__ {int flags; int uartclk; int /*<<< orphan*/ * dev; int /*<<< orphan*/  type; void* iotype; int /*<<< orphan*/  irq; scalar_t__ mapbase; void* iobase; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct pnp_device_id {int driver_data; } ;
struct pnp_dev {int /*<<< orphan*/  capabilities; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CIR_PORT ; 
 int ENODEV ; 
 int IORESOURCE_IRQ_SHAREABLE ; 
 int /*<<< orphan*/  PNP_CONSOLE ; 
 int /*<<< orphan*/  PORT_8250_CIR ; 
 int UNKNOWN_DEV ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_FIXED_PORT ; 
 int UPF_FIXED_TYPE ; 
 int UPF_IOREMAP ; 
 int UPF_SHARE_IRQ ; 
 int UPF_SKIP_TEST ; 
 void* UPIO_MEM ; 
 void* UPIO_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,void*,unsigned long long,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct pnp_dev*,int) ; 
 scalar_t__ FUNC8 (struct pnp_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pnp_dev*,void*) ; 
 struct uart_8250_port* FUNC10 (int) ; 
 int FUNC11 (struct uart_8250_port*) ; 
 int FUNC12 (struct pnp_dev*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC14(struct pnp_dev *dev, const struct pnp_device_id *dev_id)
{
	struct uart_8250_port uart, *port;
	int ret, line, flags = dev_id->driver_data;

	if (flags & UNKNOWN_DEV) {
		ret = FUNC12(dev);
		if (ret < 0)
			return ret;
	}

	FUNC1(&uart, 0, sizeof(uart));
	if (FUNC4(dev, 0))
		uart.port.irq = FUNC2(dev, 0);
	if ((flags & CIR_PORT) && FUNC8(dev, 2)) {
		uart.port.iobase = FUNC7(dev, 2);
		uart.port.iotype = UPIO_PORT;
	} else if (FUNC8(dev, 0)) {
		uart.port.iobase = FUNC7(dev, 0);
		uart.port.iotype = UPIO_PORT;
	} else if (FUNC6(dev, 0)) {
		uart.port.mapbase = FUNC5(dev, 0);
		uart.port.iotype = UPIO_MEM;
		uart.port.flags = UPF_IOREMAP;
	} else
		return -ENODEV;

	FUNC0(&dev->dev,
		 "Setup PNP port: port %#lx, mem %#llx, irq %u, type %u\n",
		 uart.port.iobase, (unsigned long long)uart.port.mapbase,
		 uart.port.irq, uart.port.iotype);

	if (flags & CIR_PORT) {
		uart.port.flags |= UPF_FIXED_PORT | UPF_FIXED_TYPE;
		uart.port.type = PORT_8250_CIR;
	}

	uart.port.flags |= UPF_SKIP_TEST | UPF_BOOT_AUTOCONF;
	if (FUNC3(dev, 0) & IORESOURCE_IRQ_SHAREABLE)
		uart.port.flags |= UPF_SHARE_IRQ;
	uart.port.uartclk = 1843200;
	uart.port.dev = &dev->dev;

	line = FUNC11(&uart);
	if (line < 0 || (flags & CIR_PORT))
		return -ENODEV;

	port = FUNC10(line);
	if (FUNC13(&port->port))
		dev->capabilities |= PNP_CONSOLE;

	FUNC9(dev, (void *)((long)line + 1));
	return 0;
}