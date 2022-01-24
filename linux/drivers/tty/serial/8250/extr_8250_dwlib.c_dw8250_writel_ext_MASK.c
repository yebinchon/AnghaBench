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
typedef  int /*<<< orphan*/  u32 ;
struct uart_port {scalar_t__ iotype; scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ UPIO_MEM32BE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct uart_port *p, int offset, u32 reg)
{
	if (p->iotype == UPIO_MEM32BE)
		FUNC0(reg, p->membase + offset);
	else
		FUNC1(reg, p->membase + offset);
}