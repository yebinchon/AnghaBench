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
struct TYPE_2__ {int /*<<< orphan*/  bfad; } ;
struct bfad_vport_s {TYPE_1__ drv_port; scalar_t__ comp_del; } ;
struct bfa_fcs_vport_s {int /*<<< orphan*/  lps; scalar_t__ vport_drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct bfa_fcs_vport_s *vport)
{
	struct bfad_vport_s *vport_drv =
			(struct bfad_vport_s *)vport->vport_drv;

	FUNC1(FUNC0(vport), vport);
	FUNC2(vport->lps);

	if (vport_drv->comp_del) {
		FUNC4(vport_drv->comp_del);
		return;
	}

	/*
	 * We queue the vport delete work to the IM work_q from here.
	 * The memory for the bfad_vport_s is freed from the FC function
	 * template vport_delete entry point.
	 */
	FUNC3(vport_drv->drv_port.bfad, &vport_drv->drv_port);
}