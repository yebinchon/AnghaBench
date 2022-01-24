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
 int SCI_TDRE ; 
 int /*<<< orphan*/  SCTFDR ; 
 int /*<<< orphan*/  SCxSR ; 
 struct plat_sci_reg* FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct sci_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static int FUNC3(struct uart_port *port)
{
	struct sci_port *s = FUNC2(port);
	unsigned int fifo_mask = (s->params->fifosize << 1) - 1;
	const struct plat_sci_reg *reg;

	reg = FUNC0(port, SCTFDR);
	if (reg->size)
		return FUNC1(port, SCTFDR) & fifo_mask;

	reg = FUNC0(port, SCFDR);
	if (reg->size)
		return FUNC1(port, SCFDR) >> 8;

	return !(FUNC1(port, SCxSR) & SCI_TDRE);
}