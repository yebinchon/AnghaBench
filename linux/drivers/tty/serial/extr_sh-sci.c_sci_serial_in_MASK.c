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
struct uart_port {int regshift; scalar_t__ membase; } ;
struct plat_sci_reg {int size; int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 struct plat_sci_reg* FUNC3 (struct uart_port*,int) ; 

__attribute__((used)) static unsigned int FUNC4(struct uart_port *p, int offset)
{
	const struct plat_sci_reg *reg = FUNC3(p, offset);

	if (reg->size == 8)
		return FUNC2(p->membase + (reg->offset << p->regshift));
	else if (reg->size == 16)
		return FUNC1(p->membase + (reg->offset << p->regshift));
	else
		FUNC0(1, "Invalid register access\n");

	return 0;
}