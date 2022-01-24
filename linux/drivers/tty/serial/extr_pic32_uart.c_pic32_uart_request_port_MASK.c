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
struct uart_port {int /*<<< orphan*/  mapbase; int /*<<< orphan*/  dev; int /*<<< orphan*/  membase; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 struct platform_device* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct uart_port *port)
{
	struct platform_device *pdev = FUNC6(port->dev);
	struct resource *res_mem;

	res_mem = FUNC2(pdev, IORESOURCE_MEM, 0);
	if (FUNC7(!res_mem))
		return -EINVAL;

	if (!FUNC4(port->mapbase, FUNC5(res_mem),
				"pic32_uart_mem"))
		return -EBUSY;

	port->membase = FUNC1(port->dev, port->mapbase,
						FUNC5(res_mem));
	if (!port->membase) {
		FUNC0(port->dev, "Unable to map registers\n");
		FUNC3(port->mapbase, FUNC5(res_mem));
		return -ENOMEM;
	}

	return 0;
}