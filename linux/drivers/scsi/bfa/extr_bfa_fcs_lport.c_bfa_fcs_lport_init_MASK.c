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
struct bfad_s {int dummy; } ;
struct bfa_lport_cfg_s {int /*<<< orphan*/  roles; } ;
struct bfa_fcs_vport_s {int /*<<< orphan*/ * vport_drv; } ;
struct bfa_fcs_lport_s {TYPE_2__* fabric; struct bfa_lport_cfg_s port_cfg; TYPE_1__* fcs; int /*<<< orphan*/  bfad_port; struct bfa_fcs_vport_s* vport; } ;
struct TYPE_4__ {int /*<<< orphan*/  vf_drv; } ;
struct TYPE_3__ {scalar_t__ bfad; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_PORT_SM_CREATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  BFA_LPORT_AEN_NEW ; 
 int BFA_STRING_32 ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct bfa_fcs_lport_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  bfa_fcs_lport_sm_uninit ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

void
FUNC7(struct bfa_fcs_lport_s *lport,
	struct bfa_lport_cfg_s *port_cfg)
{
	struct bfa_fcs_vport_s *vport = lport->vport;
	struct bfad_s *bfad = (struct bfad_s *)lport->fcs->bfad;
	char    lpwwn_buf[BFA_STRING_32];

	lport->port_cfg = *port_cfg;

	lport->bfad_port = FUNC1(lport->fcs->bfad, lport,
					lport->port_cfg.roles,
					lport->fabric->vf_drv,
					vport ? vport->vport_drv : NULL);

	FUNC6(lpwwn_buf, FUNC3(lport));
	FUNC0(KERN_INFO, bfad, bfa_log_level,
		"New logical port created: WWN = %s Role = %s\n",
		lpwwn_buf, "Initiator");
	FUNC2(lport, BFA_LPORT_AEN_NEW);

	FUNC5(lport, bfa_fcs_lport_sm_uninit);
	FUNC4(lport, BFA_FCS_PORT_SM_CREATE);
}