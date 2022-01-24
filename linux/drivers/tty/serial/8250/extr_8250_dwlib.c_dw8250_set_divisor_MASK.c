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
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_UART_DLF ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct uart_port *p, unsigned int baud,
			       unsigned int quot, unsigned int quot_frac)
{
	FUNC0(p, DW_UART_DLF, quot_frac);
	FUNC1(p, baud, quot, quot_frac);
}