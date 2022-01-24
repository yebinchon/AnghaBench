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
struct uart_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  mapbase; } ;
struct sci_port {int /*<<< orphan*/  reg_size; } ;
struct resource {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 struct resource* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct uart_port*) ; 
 struct sci_port* FUNC5 (struct uart_port*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct uart_port *port)
{
	struct resource *res;
	struct sci_port *sport = FUNC5(port);
	int ret;

	res = FUNC3(port->mapbase, sport->reg_size,
				 FUNC1(port->dev));
	if (FUNC6(res == NULL)) {
		FUNC0(port->dev, "request_mem_region failed.");
		return -EBUSY;
	}

	ret = FUNC4(port);
	if (FUNC6(ret != 0)) {
		FUNC2(res);
		return ret;
	}

	return 0;
}