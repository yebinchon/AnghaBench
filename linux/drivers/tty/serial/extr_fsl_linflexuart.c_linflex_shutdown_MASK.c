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
struct uart_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; scalar_t__ membase; } ;

/* Variables and functions */
 unsigned long LINFLEXD_LINIER_DRIE ; 
 unsigned long LINFLEXD_LINIER_DTIE ; 
 scalar_t__ LINIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	unsigned long ier;
	unsigned long flags;

	FUNC2(&port->lock, flags);

	/* disable interrupts */
	ier = FUNC1(port->membase + LINIER);
	ier &= ~(LINFLEXD_LINIER_DRIE | LINFLEXD_LINIER_DTIE);
	FUNC4(ier, port->membase + LINIER);

	FUNC3(&port->lock, flags);

	FUNC0(port->dev, port->irq, port);
}