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
struct uart_port {int /*<<< orphan*/  mapbase; int /*<<< orphan*/  membase; int /*<<< orphan*/  dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 struct platform_device* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct uart_port *port)
{
	struct platform_device *pdev = FUNC5(port->dev);
	struct resource *uart_resource;
	resource_size_t size;
	int ret;

	uart_resource = FUNC1(pdev, IORESOURCE_MEM, 0);
	if (FUNC6(!uart_resource))
		return -ENXIO;

	size = FUNC4(uart_resource);

	if (!FUNC3(port->mapbase, size, "msm_serial"))
		return -EBUSY;

	port->membase = FUNC0(port->mapbase, size);
	if (!port->membase) {
		ret = -EBUSY;
		goto fail_release_port;
	}

	return 0;

fail_release_port:
	FUNC2(port->mapbase, size);
	return ret;
}