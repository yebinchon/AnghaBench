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
typedef  int u16 ;
struct uart_port {scalar_t__ membase; } ;

/* Variables and functions */
 int MLB_USIO_FCR_FDRQ ; 
 int MLB_USIO_FCR_FTIE ; 
 scalar_t__ MLB_USIO_REG_FCR ; 
 scalar_t__ MLB_USIO_REG_SCR ; 
 scalar_t__ MLB_USIO_REG_SSR ; 
 int MLB_USIO_SCR_TBIE ; 
 int MLB_USIO_SSR_TBI ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	u16 fcr = FUNC2(port->membase + MLB_USIO_REG_FCR);

	FUNC4(fcr | MLB_USIO_FCR_FTIE, port->membase + MLB_USIO_REG_FCR);
	if (!(fcr & MLB_USIO_FCR_FDRQ))
		return;

	FUNC3(FUNC1(port->membase + MLB_USIO_REG_SCR) | MLB_USIO_SCR_TBIE,
	       port->membase + MLB_USIO_REG_SCR);

	if (FUNC1(port->membase + MLB_USIO_REG_SSR) & MLB_USIO_SSR_TBI)
		FUNC0(port);
}