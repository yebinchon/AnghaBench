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
struct TYPE_2__ {int flags; int regshift; scalar_t__ mapbase; scalar_t__ membase; int /*<<< orphan*/ * dev; int /*<<< orphan*/  iotype; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  irq; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial_card_type {unsigned int num_ports; scalar_t__* offset; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  type; } ;
struct serial_card_info {unsigned int num_ports; int /*<<< orphan*/ * ports; scalar_t__ vaddr; } ;
struct expansion_card {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct ecard_id {struct serial_card_type* data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UPF_BOOT_AUTOCONF ; 
 int UPF_SHARE_IRQ ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 unsigned long FUNC0 (struct expansion_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct expansion_card*,struct serial_card_info*) ; 
 scalar_t__ FUNC2 (struct expansion_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct serial_card_info*) ; 
 struct serial_card_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_8250_port*) ; 

__attribute__((used)) static int
FUNC7(struct expansion_card *ec, const struct ecard_id *id)
{
	struct serial_card_info *info;
	struct serial_card_type *type = id->data;
	struct uart_8250_port uart;
	unsigned long bus_addr;
	unsigned int i;

	info = FUNC4(sizeof(struct serial_card_info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->num_ports = type->num_ports;

	bus_addr = FUNC0(ec, type->type);
	info->vaddr = FUNC2(ec, type->type, 0, 0);
	if (!info->vaddr) {
		FUNC3(info);
		return -ENOMEM;
	}

	FUNC1(ec, info);

	FUNC5(&uart, 0, sizeof(struct uart_8250_port));
	uart.port.irq	= ec->irq;
	uart.port.flags	= UPF_BOOT_AUTOCONF | UPF_SHARE_IRQ;
	uart.port.uartclk	= type->uartclk;
	uart.port.iotype	= UPIO_MEM;
	uart.port.regshift	= 2;
	uart.port.dev	= &ec->dev;

	for (i = 0; i < info->num_ports; i++) {
		uart.port.membase = info->vaddr + type->offset[i];
		uart.port.mapbase = bus_addr + type->offset[i];

		info->ports[i] = FUNC6(&uart);
	}

	return 0;
}