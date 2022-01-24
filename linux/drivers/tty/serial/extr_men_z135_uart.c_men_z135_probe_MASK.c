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
struct TYPE_2__ {int uartclk; int flags; int /*<<< orphan*/ * membase; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  type; struct device* dev; scalar_t__ line; void* iotype; int /*<<< orphan*/  irq; int /*<<< orphan*/ * ops; int /*<<< orphan*/  fifosize; } ;
struct men_z135_port {unsigned char* rxbuf; TYPE_1__ port; int /*<<< orphan*/  lock; struct mcb_device* mdev; } ;
struct mcb_device_id {int dummy; } ;
struct device {int dummy; } ;
struct mcb_device {struct resource mem; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MEN_Z135_BASECLK ; 
 int /*<<< orphan*/  MEN_Z135_FIFO_SIZE ; 
 int /*<<< orphan*/  PORT_MEN_Z135 ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_IOREMAP ; 
 void* UPIO_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct men_z135_port* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  FUNC4 (struct mcb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mcb_device*,struct men_z135_port*) ; 
 int /*<<< orphan*/  men_z135_driver ; 
 int /*<<< orphan*/  men_z135_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct mcb_device *mdev,
			const struct mcb_device_id *id)
{
	struct men_z135_port *uart;
	struct resource *mem;
	struct device *dev;
	int err;

	dev = &mdev->dev;

	uart = FUNC2(dev, sizeof(struct men_z135_port), GFP_KERNEL);
	if (!uart)
		return -ENOMEM;

	uart->rxbuf = (unsigned char *)FUNC0(GFP_KERNEL);
	if (!uart->rxbuf)
		return -ENOMEM;

	mem = &mdev->mem;

	FUNC5(mdev, uart);

	uart->port.uartclk = MEN_Z135_BASECLK * 16;
	uart->port.fifosize = MEN_Z135_FIFO_SIZE;
	uart->port.iotype = UPIO_MEM;
	uart->port.ops = &men_z135_ops;
	uart->port.irq = FUNC4(mdev);
	uart->port.iotype = UPIO_MEM;
	uart->port.flags = UPF_BOOT_AUTOCONF | UPF_IOREMAP;
	uart->port.line = line++;
	uart->port.dev = dev;
	uart->port.type = PORT_MEN_Z135;
	uart->port.mapbase = mem->start;
	uart->port.membase = NULL;
	uart->mdev = mdev;

	FUNC6(&uart->lock);

	err = FUNC7(&men_z135_driver, &uart->port);
	if (err)
		goto err;

	return 0;

err:
	FUNC3((unsigned long) uart->rxbuf);
	FUNC1(dev, "Failed to add UART: %d\n", err);

	return err;
}