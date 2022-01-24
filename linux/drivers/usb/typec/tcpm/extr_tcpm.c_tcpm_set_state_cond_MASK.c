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
struct tcpm_port {size_t enter_state; size_t state; } ;
typedef  enum tcpm_state { ____Placeholder_tcpm_state } tcpm_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcpm_port*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpm_port*,int,unsigned int) ; 
 int /*<<< orphan*/ * tcpm_states ; 

__attribute__((used)) static void FUNC2(struct tcpm_port *port, enum tcpm_state state,
				unsigned int delay_ms)
{
	if (port->enter_state == port->state)
		FUNC1(port, state, delay_ms);
	else
		FUNC0(port,
			 "skipped %sstate change %s -> %s [%u ms], context state %s",
			 delay_ms ? "delayed " : "",
			 tcpm_states[port->state], tcpm_states[state],
			 delay_ms, tcpm_states[port->enter_state]);
}