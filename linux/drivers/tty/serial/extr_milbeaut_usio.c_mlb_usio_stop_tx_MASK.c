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
 int MLB_USIO_FCR_FTIE ; 
 scalar_t__ MLB_USIO_REG_FCR ; 
 scalar_t__ MLB_USIO_REG_SCR ; 
 int MLB_USIO_SCR_TBIE ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	FUNC3(FUNC1(port->membase + MLB_USIO_REG_FCR) & ~MLB_USIO_FCR_FTIE,
	       port->membase + MLB_USIO_REG_FCR);
	FUNC2(FUNC0(port->membase + MLB_USIO_REG_SCR) & ~MLB_USIO_SCR_TBIE,
	       port->membase + MLB_USIO_REG_SCR);
}