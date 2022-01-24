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
struct bfi_pbc_vport_s {int /*<<< orphan*/  vp_nwwn; int /*<<< orphan*/  vp_pwwn; } ;
struct TYPE_2__ {struct bfad_s* bfad; } ;
struct bfad_vport_s {int /*<<< orphan*/  list_entry; int /*<<< orphan*/  fcs_vport; TYPE_1__ drv_port; } ;
struct bfad_s {int /*<<< orphan*/  pbc_vport_list; int /*<<< orphan*/  bfa_fcs; } ;
struct bfa_lport_cfg_s {int /*<<< orphan*/  preboot_vp; int /*<<< orphan*/  nwwn; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  roles; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_LPORT_ROLE_FCP_IM ; 
 int BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_lport_cfg_s*,struct bfad_vport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 struct bfad_vport_s* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(struct bfad_s *bfad, struct bfi_pbc_vport_s pbc_vport)
{

	struct bfa_lport_cfg_s port_cfg = {0};
	struct bfad_vport_s   *vport;
	int rc;

	vport = FUNC2(sizeof(struct bfad_vport_s), GFP_ATOMIC);
	if (!vport) {
		FUNC1(bfad, 0);
		return;
	}

	vport->drv_port.bfad = bfad;
	port_cfg.roles = BFA_LPORT_ROLE_FCP_IM;
	port_cfg.pwwn = pbc_vport.vp_pwwn;
	port_cfg.nwwn = pbc_vport.vp_nwwn;
	port_cfg.preboot_vp  = BFA_TRUE;

	rc = FUNC0(&vport->fcs_vport, &bfad->bfa_fcs, 0,
				  &port_cfg, vport);

	if (rc != BFA_STATUS_OK) {
		FUNC1(bfad, 0);
		return;
	}

	FUNC3(&vport->list_entry, &bfad->pbc_vport_list);
}