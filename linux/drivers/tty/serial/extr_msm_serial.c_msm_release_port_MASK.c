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
struct uart_port {int /*<<< orphan*/ * membase; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct platform_device *pdev = FUNC4(port->dev);
	struct resource *uart_resource;
	resource_size_t size;

	uart_resource = FUNC1(pdev, IORESOURCE_MEM, 0);
	if (FUNC5(!uart_resource))
		return;
	size = FUNC3(uart_resource);

	FUNC2(port->mapbase, size);
	FUNC0(port->membase);
	port->membase = NULL;
}