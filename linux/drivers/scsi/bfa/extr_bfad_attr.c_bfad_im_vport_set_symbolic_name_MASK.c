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
struct fc_vport {char* symbolic_name; scalar_t__ dd_data; } ;
struct TYPE_4__ {TYPE_1__* im_port; } ;
struct bfad_vport_s {TYPE_2__ drv_port; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa_fcs; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct bfa_fcs_vport_s {int /*<<< orphan*/  lport; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {struct Scsi_Host* shost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct bfa_fcs_vport_s* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC7(struct fc_vport *fc_vport)
{
	struct bfad_vport_s *vport = (struct bfad_vport_s *)fc_vport->dd_data;
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *)vport->drv_port.im_port;
	struct bfad_s *bfad = im_port->bfad;
	struct Scsi_Host *vshost = vport->drv_port.im_port->shost;
	char *sym_name = fc_vport->symbolic_name;
	struct bfa_fcs_vport_s *fcs_vport;
	wwn_t	pwwn;
	unsigned long flags;

	FUNC6(FUNC2(vshost), (u8 *)&pwwn);

	FUNC3(&bfad->bfad_lock, flags);
	fcs_vport = FUNC1(&bfad->bfa_fcs, 0, pwwn);
	FUNC4(&bfad->bfad_lock, flags);

	if (fcs_vport == NULL)
		return;

	FUNC3(&bfad->bfad_lock, flags);
	if (FUNC5(sym_name) > 0)
		FUNC0(&fcs_vport->lport, sym_name);
	FUNC4(&bfad->bfad_lock, flags);
}