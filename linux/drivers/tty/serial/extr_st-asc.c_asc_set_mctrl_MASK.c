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
struct asc_port {int /*<<< orphan*/  rts; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASC_CTL ; 
 int ASC_CTL_CTSENABLE ; 
 unsigned int TIOCM_RTS ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct asc_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port, unsigned int mctrl)
{
	struct asc_port *ascport = FUNC2(port);

	/*
	 * This routine is used for seting signals of: DTR, DCD, CTS and RTS.
	 * We use ASC's hardware for CTS/RTS when hardware flow-control is
	 * enabled, however if the RTS line is required for another purpose,
	 * commonly controlled using HUP from userspace, then we need to toggle
	 * it manually, using GPIO.
	 *
	 * Some boards also have DTR and DCD implemented using PIO pins, code to
	 * do this should be hooked in here.
	 */

	if (!ascport->rts)
		return;

	/* If HW flow-control is enabled, we can't fiddle with the RTS line */
	if (FUNC0(port, ASC_CTL) & ASC_CTL_CTSENABLE)
		return;

	FUNC1(ascport->rts, mctrl & TIOCM_RTS);
}