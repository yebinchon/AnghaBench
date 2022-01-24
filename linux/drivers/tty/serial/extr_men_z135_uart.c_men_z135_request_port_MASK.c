#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uart_port {int /*<<< orphan*/ * membase; int /*<<< orphan*/  mapbase; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct men_z135_port {struct resource* mem; struct mcb_device* mdev; } ;
struct mcb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct resource*) ; 
 int FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 struct resource* FUNC5 (struct mcb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 struct men_z135_port* FUNC7 (struct uart_port*) ; 

__attribute__((used)) static int FUNC8(struct uart_port *port)
{
	struct men_z135_port *uart = FUNC7(port);
	struct mcb_device *mdev = uart->mdev;
	struct resource *mem;

	mem = FUNC5(uart->mdev, FUNC2(&mdev->dev));
	if (FUNC0(mem))
		return FUNC1(mem);

	port->mapbase = mem->start;
	uart->mem = mem;

	port->membase = FUNC3(mem->start, FUNC6(mem));
	if (port->membase == NULL) {
		FUNC4(mem);
		return -ENOMEM;
	}

	return 0;
}