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
struct zilog_channel {int dummy; } ;
struct uart_port {int /*<<< orphan*/  lock; } ;
struct uart_ip22zilog_port {int* curregs; } ;

/* Variables and functions */
 int EXT_INT_ENAB ; 
 size_t R1 ; 
 size_t R3 ; 
 size_t R5 ; 
 int RxENAB ; 
 int RxINT_MASK ; 
 int SND_BRK ; 
 int TxENAB ; 
 int TxINT_ENAB ; 
 struct uart_ip22zilog_port* FUNC0 (struct uart_port*) ; 
 struct zilog_channel* FUNC1 (struct uart_port*) ; 
 scalar_t__ FUNC2 (struct uart_ip22zilog_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_ip22zilog_port*,struct zilog_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct uart_ip22zilog_port *up = FUNC0(port);
	struct zilog_channel *channel;
	unsigned long flags;

	if (FUNC2(up))
		return;

	FUNC4(&port->lock, flags);

	channel = FUNC1(port);

	/* Disable receiver and transmitter.  */
	up->curregs[R3] &= ~RxENAB;
	up->curregs[R5] &= ~TxENAB;

	/* Disable all interrupts and BRK assertion.  */
	up->curregs[R1] &= ~(EXT_INT_ENAB | TxINT_ENAB | RxINT_MASK);
	up->curregs[R5] &= ~SND_BRK;
	FUNC3(up, channel);

	FUNC5(&port->lock, flags);
}