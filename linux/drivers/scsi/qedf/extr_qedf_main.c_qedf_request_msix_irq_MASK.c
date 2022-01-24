#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct TYPE_11__ {int /*<<< orphan*/  used_cnt; TYPE_4__* msix; } ;
struct TYPE_7__ {int num_hwfns; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
struct qedf_ctx {int num_queues; TYPE_5__ int_info; int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/ * fp_array; int /*<<< orphan*/  cdev; TYPE_2__ dev_info; } ;
struct TYPE_12__ {TYPE_3__* common; } ;
struct TYPE_10__ {int /*<<< orphan*/  vector; } ;
struct TYPE_9__ {size_t (* get_affin_hwfn_idx ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,size_t) ; 
 int /*<<< orphan*/  QEDF_LOG_DISC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* qed_ops ; 
 int /*<<< orphan*/  qedf_msix_handler ; 
 int /*<<< orphan*/  FUNC6 (struct qedf_ctx*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct qedf_ctx *qedf)
{
	int i, rc, cpu;
	u16 vector_idx = 0;
	u32 vector;

	cpu = FUNC2(cpu_online_mask);
	for (i = 0; i < qedf->num_queues; i++) {
		vector_idx = i * qedf->dev_info.common.num_hwfns +
			qed_ops->common->get_affin_hwfn_idx(qedf->cdev);
		FUNC0(&qedf->dbg_ctx, QEDF_LOG_DISC,
			  "Requesting IRQ #%d vector_idx=%d.\n",
			  i, vector_idx);
		vector = qedf->int_info.msix[vector_idx].vector;
		rc = FUNC7(vector, qedf_msix_handler, 0, "qedf",
				 &qedf->fp_array[i]);

		if (rc) {
			FUNC1(&(qedf->dbg_ctx), "request_irq failed.\n");
			FUNC6(qedf);
			return rc;
		}

		qedf->int_info.used_cnt++;
		rc = FUNC5(vector, FUNC4(cpu));
		cpu = FUNC3(cpu, cpu_online_mask);
	}

	return 0;
}