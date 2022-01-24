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
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*) ; 
 struct uart_8250_port* FUNC1 (struct uart_port*) ; 

__attribute__((used)) static void FUNC2(struct uart_port *p)
{
	struct uart_8250_port *up = FUNC1(p);
	/*
	 * On receipt of a BI, serial device in Intel ME (Intel
	 * management engine) needs to have its fifos cleared for sane
	 * SOL (Serial Over Lan) output.
	 */
	FUNC0(up);
}