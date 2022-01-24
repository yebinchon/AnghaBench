#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bfa_ioim_s {TYPE_3__* iosp; TYPE_4__* itnim; int /*<<< orphan*/  qe; int /*<<< orphan*/  hcb_qe; TYPE_1__* fcpim; } ;
struct TYPE_8__ {int /*<<< orphan*/  delay_comp_q; scalar_t__ iotov_active; } ;
struct TYPE_7__ {TYPE_2__* tskim; } ;
struct TYPE_6__ {int /*<<< orphan*/  wc; } ;
struct TYPE_5__ {scalar_t__ delay_comp; int /*<<< orphan*/  ioim_comp_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bfa_ioim_s *ioim)
{
	/*
	 * Move IO from itnim queue to fcpim global queue since itnim will be
	 * freed.
	 */
	FUNC4(&ioim->qe);
	FUNC3(&ioim->qe, &ioim->fcpim->ioim_comp_q);

	if (!ioim->iosp->tskim) {
		if (ioim->fcpim->delay_comp && ioim->itnim->iotov_active) {
			FUNC0(&ioim->hcb_qe);
			FUNC4(&ioim->qe);
			FUNC3(&ioim->qe, &ioim->itnim->delay_comp_q);
		}
		FUNC1(ioim->itnim);
	} else
		FUNC2(&ioim->iosp->tskim->wc);
}