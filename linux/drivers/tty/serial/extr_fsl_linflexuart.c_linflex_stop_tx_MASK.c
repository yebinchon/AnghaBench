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
struct uart_port {scalar_t__ membase; } ;

/* Variables and functions */
 unsigned long LINFLEXD_LINIER_DTIE ; 
 scalar_t__ LINIER ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	unsigned long ier;

	ier = FUNC0(port->membase + LINIER);
	ier &= ~(LINFLEXD_LINIER_DTIE);
	FUNC1(ier, port->membase + LINIER);
}