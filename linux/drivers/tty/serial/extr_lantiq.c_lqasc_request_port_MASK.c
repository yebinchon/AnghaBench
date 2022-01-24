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
struct uart_port {int flags; int /*<<< orphan*/ * membase; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int UPF_IOREMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct resource* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct resource*) ; 
 struct platform_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct uart_port *port)
{
	struct platform_device *pdev = FUNC6(port->dev);
	struct resource *res;
	int size;

	res = FUNC4(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC0(&pdev->dev, "cannot obtain I/O memory region");
		return -ENODEV;
	}
	size = FUNC5(res);

	res = FUNC3(&pdev->dev, res->start,
		size, FUNC1(&pdev->dev));
	if (!res) {
		FUNC0(&pdev->dev, "cannot request I/O memory region");
		return -EBUSY;
	}

	if (port->flags & UPF_IOREMAP) {
		port->membase = FUNC2(&pdev->dev,
			port->mapbase, size);
		if (port->membase == NULL)
			return -ENOMEM;
	}
	return 0;
}