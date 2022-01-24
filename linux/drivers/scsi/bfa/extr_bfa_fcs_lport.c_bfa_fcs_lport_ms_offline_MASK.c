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
struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_fcs_lport_ms_s {struct bfa_fcs_lport_s* port; } ;

/* Variables and functions */
 struct bfa_fcs_lport_ms_s* FUNC0 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  MSSM_EVENT_PORT_OFFLINE ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_ms_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_ms_s*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct bfa_fcs_lport_s *port)
{
	struct bfa_fcs_lport_ms_s *ms = FUNC0(port);

	ms->port = port;
	FUNC2(ms, MSSM_EVENT_PORT_OFFLINE);
	FUNC1(ms);
}