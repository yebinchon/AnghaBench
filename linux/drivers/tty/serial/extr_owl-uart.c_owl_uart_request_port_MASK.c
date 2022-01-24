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
struct uart_port {int flags; int /*<<< orphan*/  membase; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 struct platform_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	struct platform_device *pdev = FUNC5(port->dev);
	struct resource *res;

	res = FUNC3(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENXIO;

	if (!FUNC2(port->dev, port->mapbase,
			FUNC4(res), FUNC0(port->dev)))
		return -EBUSY;

	if (port->flags & UPF_IOREMAP) {
		port->membase = FUNC1(port->dev, port->mapbase,
				FUNC4(res));
		if (!port->membase)
			return -EBUSY;
	}

	return 0;
}