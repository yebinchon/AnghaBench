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
typedef  int u8 ;
typedef  int u32 ;
struct bfa_fcs_rport_s {int dummy; } ;
struct TYPE_4__ {int num_alpa; int alpabm_valid; int* alpa_pos_map; } ;
struct TYPE_5__ {TYPE_1__ ploop; } ;
struct bfa_fcs_lport_s {int pid; TYPE_3__* fcs; TYPE_2__ port_topo; } ;
struct TYPE_6__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int MAX_ALPA_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_lport_s*) ; 
 struct bfa_fcs_rport_s* FUNC1 (struct bfa_fcs_lport_s*,int) ; 
 struct bfa_fcs_rport_s* FUNC2 (struct bfa_fcs_lport_s*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int* loop_alpa_map ; 

__attribute__((used)) static void
FUNC5(struct bfa_fcs_lport_s *port)
{
	u8 num_alpa = 0, alpabm_valid = 0;
	struct bfa_fcs_rport_s *rport;
	u8 *alpa_map = NULL;
	int i = 0;
	u32 pid;

	FUNC0(port);

	num_alpa = port->port_topo.ploop.num_alpa;
	alpabm_valid = port->port_topo.ploop.alpabm_valid;
	alpa_map = port->port_topo.ploop.alpa_pos_map;

	FUNC4(port->fcs->bfa, port->pid);
	FUNC4(port->fcs->bfa, num_alpa);
	if (alpabm_valid == 1) {
		for (i = 0; i < num_alpa; i++) {
			FUNC4(port->fcs->bfa, alpa_map[i]);
			if (alpa_map[i] != FUNC3(port->pid)) {
				pid = alpa_map[i];
				FUNC4(port->fcs->bfa, pid);
				rport = FUNC1(port,
						FUNC3(pid));
				if (!rport)
					rport = FUNC2(port,
						FUNC3(pid));
			}
		}
	} else {
		for (i = 0; i < MAX_ALPA_COUNT; i++) {
			if (alpa_map[i] != port->pid) {
				pid = loop_alpa_map[i];
				FUNC4(port->fcs->bfa, pid);
				rport = FUNC1(port,
						FUNC3(pid));
				if (!rport)
					rport = FUNC2(port,
						FUNC3(pid));
			}
		}
	}
}