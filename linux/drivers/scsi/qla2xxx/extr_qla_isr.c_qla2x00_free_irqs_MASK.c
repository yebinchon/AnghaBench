#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rsp_que {int dummy; } ;
struct qla_msix_entry {struct rsp_que* handle; int /*<<< orphan*/  vector; scalar_t__ have_irq; } ;
struct TYPE_5__ {scalar_t__ msix_enabled; } ;
struct qla_hw_data {int msix_count; int /*<<< orphan*/  pdev; TYPE_1__ flags; struct qla_msix_entry* msix_entries; struct rsp_que** rsp_q_map; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rsp_que*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_msix_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_init ; 

void
FUNC6(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;
	struct rsp_que *rsp;
	struct qla_msix_entry *qentry;
	int i;

	/*
	 * We need to check that ha->rsp_q_map is valid in case we are called
	 * from a probe failure context.
	 */
	if (!ha->rsp_q_map || !ha->rsp_q_map[0])
		goto free_irqs;
	rsp = ha->rsp_q_map[0];

	if (ha->flags.msix_enabled) {
		for (i = 0; i < ha->msix_count; i++) {
			qentry = &ha->msix_entries[i];
			if (qentry->have_irq) {
				FUNC1(qentry->vector, NULL);
				FUNC0(FUNC4(ha->pdev, i), qentry->handle);
			}
		}
		FUNC2(ha->msix_entries);
		ha->msix_entries = NULL;
		ha->flags.msix_enabled = 0;
		FUNC5(ql_dbg_init, vha, 0x0042,
			"Disabled MSI-X.\n");
	} else {
		FUNC0(FUNC4(ha->pdev, 0), rsp);
	}

free_irqs:
	FUNC3(ha->pdev);
}