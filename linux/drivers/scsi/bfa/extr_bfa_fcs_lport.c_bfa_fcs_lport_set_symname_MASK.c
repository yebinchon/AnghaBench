#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  symname; } ;
struct TYPE_4__ {TYPE_1__ sym_name; } ;
struct bfa_fcs_lport_s {TYPE_2__ port_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_lport_sm_online ; 
 scalar_t__ FUNC2 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void
FUNC4(struct bfa_fcs_lport_s *port,
				char *symname)
{
	FUNC3(port->port_cfg.sym_name.symname, symname);

	if (FUNC2(port, bfa_fcs_lport_sm_online))
		FUNC1(
			FUNC0(port), NULL);
}