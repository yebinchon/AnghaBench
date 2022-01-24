#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int /*<<< orphan*/ * wq; TYPE_2__* isp_ops; scalar_t__ interrupts_on; } ;
struct TYPE_11__ {scalar_t__ init_done; scalar_t__ online; } ;
struct TYPE_13__ {TYPE_1__ flags; scalar_t__ timer_active; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* disable_intrs ) (struct qla_hw_data*) ;} ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct qla_hw_data*) ; 

__attribute__((used)) static void
FUNC11(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;

	FUNC3(vha, DID_NO_CONNECT << 16);

	/* Disable timer */
	if (vha->timer_active)
		FUNC8(vha);

	FUNC2(vha);
	vha->flags.online = 0;

	/* turn-off interrupts on the card */
	if (ha->interrupts_on) {
		vha->flags.init_done = 0;
		ha->isp_ops->disable_intrs(ha);
	}

	FUNC4(vha);

	FUNC5(vha);

	/* Flush the work queue and remove it */
	if (ha->wq) {
		FUNC1(ha->wq);
		FUNC0(ha->wq);
		ha->wq = NULL;
	}


	FUNC7(ha);

	FUNC9(vha);

	FUNC6(ha);
}