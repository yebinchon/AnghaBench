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
struct uart_port {scalar_t__ membase; int /*<<< orphan*/  dev; } ;
struct clps711x_port {int /*<<< orphan*/  syscon; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYSCON_OFFSET ; 
 int /*<<< orphan*/  SYSCON_UARTEN ; 
 int UBRLCR_BREAK ; 
 scalar_t__ UBRLCR_OFFSET ; 
 struct clps711x_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	struct clps711x_port *s = FUNC0(port->dev);

	/* Disable break */
	FUNC3(FUNC1(port->membase + UBRLCR_OFFSET) & ~UBRLCR_BREAK,
	       port->membase + UBRLCR_OFFSET);

	/* Enable the port */
	return FUNC2(s->syscon, SYSCON_OFFSET,
				  SYSCON_UARTEN, SYSCON_UARTEN);
}