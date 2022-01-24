#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  dsr; int /*<<< orphan*/  rng; } ;
struct uart_port {TYPE_2__* state; TYPE_3__ icount; } ;
struct TYPE_4__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_5__ {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_MSR ; 
 int UART_MSR_ANY_DELTA ; 
 int UART_MSR_CTS ; 
 int UART_MSR_DCD ; 
 int UART_MSR_DCTS ; 
 int UART_MSR_DDCD ; 
 int UART_MSR_DDSR ; 
 int UART_MSR_TERI ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct uart_port *port)
{
	uint8_t msr;

	msr = FUNC0(port, UART_MSR);
	if ((msr & UART_MSR_ANY_DELTA) == 0)
		return;
	if (msr & UART_MSR_DDCD)
		FUNC2(port, msr & UART_MSR_DCD);
	if (msr & UART_MSR_TERI)
		port->icount.rng++;
	if (msr & UART_MSR_DDSR)
		port->icount.dsr++;
	if (msr & UART_MSR_DCTS)
		FUNC1(port, msr & UART_MSR_CTS);

	FUNC3(&port->state->port.delta_msr_wait);
}