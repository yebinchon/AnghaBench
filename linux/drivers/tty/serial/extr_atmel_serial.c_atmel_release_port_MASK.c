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
struct uart_port {int flags; int /*<<< orphan*/ * membase; int /*<<< orphan*/  mapbase; TYPE_1__* dev; } ;
struct platform_device {int /*<<< orphan*/  resource; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	struct platform_device *mpdev = FUNC3(port->dev->parent);
	int size = FUNC2(mpdev->resource);

	FUNC1(port->mapbase, size);

	if (port->flags & UPF_IOREMAP) {
		FUNC0(port->membase);
		port->membase = NULL;
	}
}