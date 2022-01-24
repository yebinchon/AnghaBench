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
typedef  size_t u16 ;
struct TYPE_11__ {TYPE_4__* msix; int /*<<< orphan*/  used_cnt; } ;
struct TYPE_7__ {int num_hwfns; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
struct qedi_ctx {TYPE_5__ int_info; int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/ * fp_array; int /*<<< orphan*/  cdev; TYPE_2__ dev_info; } ;
struct TYPE_12__ {TYPE_3__* common; } ;
struct TYPE_10__ {int /*<<< orphan*/  vector; } ;
struct TYPE_9__ {size_t (* get_affin_hwfn_idx ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (struct qedi_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,size_t) ; 
 int /*<<< orphan*/  QEDI_LOG_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qedi_msix_handler ; 
 TYPE_6__* qedi_ops ; 
 int /*<<< orphan*/  FUNC7 (struct qedi_ctx*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct qedi_ctx *qedi)
{
	int i, rc, cpu;
	u16 idx;

	cpu = FUNC3(cpu_online_mask);
	for (i = 0; i < FUNC0(qedi); i++) {
		idx = i * qedi->dev_info.common.num_hwfns +
			  qedi_ops->common->get_affin_hwfn_idx(qedi->cdev);

		FUNC1(&qedi->dbg_ctx, QEDI_LOG_INFO,
			  "dev_info: num_hwfns=%d affin_hwfn_idx=%d.\n",
			  qedi->dev_info.common.num_hwfns,
			  qedi_ops->common->get_affin_hwfn_idx(qedi->cdev));

		rc = FUNC8(qedi->int_info.msix[idx].vector,
				 qedi_msix_handler, 0, "qedi",
				 &qedi->fp_array[i]);
		if (rc) {
			FUNC2(&qedi->dbg_ctx, "request_irq failed.\n");
			FUNC7(qedi);
			return rc;
		}
		qedi->int_info.used_cnt++;
		rc = FUNC6(qedi->int_info.msix[idx].vector,
					   FUNC5(cpu));
		cpu = FUNC4(cpu, cpu_online_mask);
	}

	return 0;
}