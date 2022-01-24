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
 int /*<<< orphan*/  OWL_UART_CTL ; 
 int OWL_UART_CTL_RXDE ; 
 int OWL_UART_CTL_RXIE ; 
 int /*<<< orphan*/  OWL_UART_STAT ; 
 int OWL_UART_STAT_RIP ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	u32 val;

	val = FUNC0(port, OWL_UART_CTL);
	val &= ~(OWL_UART_CTL_RXIE | OWL_UART_CTL_RXDE);
	FUNC1(port, val, OWL_UART_CTL);

	val = FUNC0(port, OWL_UART_STAT);
	val |= OWL_UART_STAT_RIP;
	FUNC1(port, val, OWL_UART_STAT);
}