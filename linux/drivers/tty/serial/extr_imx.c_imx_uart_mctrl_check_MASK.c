#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dsr; int /*<<< orphan*/  rng; } ;
struct TYPE_9__ {TYPE_3__* state; TYPE_1__ icount; } ;
struct imx_port {unsigned int old_status; TYPE_4__ port; } ;
struct TYPE_7__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_8__ {TYPE_2__ port; } ;

/* Variables and functions */
 unsigned int TIOCM_CAR ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 unsigned int TIOCM_RI ; 
 unsigned int FUNC0 (struct imx_port*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct imx_port *sport)
{
	unsigned int status, changed;

	status = FUNC0(sport);
	changed = status ^ sport->old_status;

	if (changed == 0)
		return;

	sport->old_status = status;

	if (changed & TIOCM_RI && status & TIOCM_RI)
		sport->port.icount.rng++;
	if (changed & TIOCM_DSR)
		sport->port.icount.dsr++;
	if (changed & TIOCM_CAR)
		FUNC2(&sport->port, status & TIOCM_CAR);
	if (changed & TIOCM_CTS)
		FUNC1(&sport->port, status & TIOCM_CTS);

	FUNC3(&sport->port.state->port.delta_msr_wait);
}