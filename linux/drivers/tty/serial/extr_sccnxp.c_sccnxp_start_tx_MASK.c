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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct sccnxp_port {int /*<<< orphan*/  lock; TYPE_1__* chip; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_OP ; 
 int /*<<< orphan*/  IMR_TXRDY ; 
 int SCCNXP_HAVE_IO ; 
 struct sccnxp_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct sccnxp_port *s = FUNC0(port->dev);
	unsigned long flags;

	FUNC3(&s->lock, flags);

	/* Set direction to output */
	if (s->chip->flags & SCCNXP_HAVE_IO)
		FUNC2(port, DIR_OP, 1);

	FUNC1(port, IMR_TXRDY);

	FUNC4(&s->lock, flags);
}