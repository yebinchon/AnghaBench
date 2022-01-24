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
struct uart_port {int dummy; } ;
struct sci_port {TYPE_1__* params; } ;
struct plat_sci_reg {scalar_t__ size; } ;
struct TYPE_2__ {int fifosize; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCFDR ; 
 int /*<<< orphan*/  SCRFDR ; 
 int /*<<< orphan*/  SCxSR ; 
 unsigned int FUNC0 (struct uart_port*) ; 
 struct plat_sci_reg* FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct sci_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	struct sci_port *s = FUNC3(port);
	unsigned int fifo_mask = (s->params->fifosize << 1) - 1;
	const struct plat_sci_reg *reg;

	reg = FUNC1(port, SCRFDR);
	if (reg->size)
		return FUNC2(port, SCRFDR) & fifo_mask;

	reg = FUNC1(port, SCFDR);
	if (reg->size)
		return FUNC2(port, SCFDR) & fifo_mask;

	return (FUNC2(port, SCxSR) & FUNC0(port)) != 0;
}