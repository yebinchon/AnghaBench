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
struct bfa_fcs_vport_s {int /*<<< orphan*/  qe; } ;
struct bfa_fcs_fabric_s {int /*<<< orphan*/  wc; int /*<<< orphan*/  num_vports; int /*<<< orphan*/  vport_q; int /*<<< orphan*/  vf_id; int /*<<< orphan*/  fcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(struct bfa_fcs_fabric_s *fabric,
			struct bfa_fcs_vport_s *vport)
{
	/*
	 * - add vport to fabric's vport_q
	 */
	FUNC0(fabric->fcs, fabric->vf_id);

	FUNC2(&vport->qe, &fabric->vport_q);
	fabric->num_vports++;
	FUNC1(&fabric->wc);
}