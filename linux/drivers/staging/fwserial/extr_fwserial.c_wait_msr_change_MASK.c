#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct async_icount {int dummy; } ;
struct fwtty_port {TYPE_1__ port; struct async_icount icount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fwtty_port*,unsigned long,struct async_icount*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fwtty_port *port, unsigned long mask)
{
	struct async_icount prev;

	prev = port->icount;

	return FUNC1(port->port.delta_msr_wait,
					FUNC0(port, mask, &prev));
}