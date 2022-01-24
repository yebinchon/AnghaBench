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
typedef  int u8 ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 unsigned int TIOCSER_TEMT ; 
 int /*<<< orphan*/  UARTn_STATE ; 
 int UARTn_STATE_TX_FULL ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1(struct uart_port *port)
{
	u8 status = FUNC0(port, UARTn_STATE);

	return (status & UARTn_STATE_TX_FULL) ? 0 : TIOCSER_TEMT;
}