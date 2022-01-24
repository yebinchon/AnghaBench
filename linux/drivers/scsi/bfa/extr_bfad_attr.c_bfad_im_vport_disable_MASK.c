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
typedef  int /*<<< orphan*/  wwn_t ;
typedef  int /*<<< orphan*/  u8 ;
struct fc_vport {scalar_t__ dd_data; } ;
struct TYPE_4__ {TYPE_1__* im_port; struct bfad_s* bfad; } ;
struct bfad_vport_s {TYPE_2__ drv_port; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa_fcs; } ;
struct bfa_fcs_vport_s {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {struct Scsi_Host* shost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_VPORT_ACTIVE ; 
 int /*<<< orphan*/  FC_VPORT_DISABLED ; 
 int VPCERR_BAD_WWN ; 
 struct bfa_fcs_vport_s* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct fc_vport *fc_vport, bool disable)
{
	struct bfad_vport_s *vport;
	struct bfad_s *bfad;
	struct bfa_fcs_vport_s *fcs_vport;
	struct Scsi_Host *vshost;
	wwn_t   pwwn;
	unsigned long flags;

	vport = (struct bfad_vport_s *)fc_vport->dd_data;
	bfad = vport->drv_port.bfad;
	vshost = vport->drv_port.im_port->shost;
	FUNC7(FUNC3(vshost), (u8 *)&pwwn);

	FUNC5(&bfad->bfad_lock, flags);
	fcs_vport = FUNC0(&bfad->bfa_fcs, 0, pwwn);
	FUNC6(&bfad->bfad_lock, flags);

	if (fcs_vport == NULL)
		return VPCERR_BAD_WWN;

	if (disable) {
		FUNC2(fcs_vport);
		FUNC4(fc_vport, FC_VPORT_DISABLED);
	} else {
		FUNC1(fcs_vport);
		FUNC4(fc_vport, FC_VPORT_ACTIVE);
	}

	return 0;
}