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
typedef  int u32 ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,unsigned int,int) ; 

__attribute__((used)) static inline void FUNC4(struct uart_port *port, int idx,
				   unsigned int reg)
{
	unsigned long flags;
	u32 val;

	FUNC1(flags);
	val = FUNC2(port, reg);
	val |= (1 << idx);
	FUNC3(port, reg, val);
	FUNC0(flags);
}