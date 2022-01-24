#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * dfs_tgt_port_database; int /*<<< orphan*/ * dfs_tgt_sess; int /*<<< orphan*/ * dfs_naqp; } ;
struct qla_hw_data {int /*<<< orphan*/ * dfs_dir; int /*<<< orphan*/ * dfs_fce; int /*<<< orphan*/ * dfs_tgt_counters; int /*<<< orphan*/ * dfs_fw_resource_cnt; TYPE_1__ tgt; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * qla2x00_dfs_root ; 
 int /*<<< orphan*/  qla2x00_dfs_root_count ; 

int
FUNC3(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;

	if (ha->tgt.dfs_naqp) {
		FUNC2(ha->tgt.dfs_naqp);
		ha->tgt.dfs_naqp = NULL;
	}

	if (ha->tgt.dfs_tgt_sess) {
		FUNC2(ha->tgt.dfs_tgt_sess);
		ha->tgt.dfs_tgt_sess = NULL;
	}

	if (ha->tgt.dfs_tgt_port_database) {
		FUNC2(ha->tgt.dfs_tgt_port_database);
		ha->tgt.dfs_tgt_port_database = NULL;
	}

	if (ha->dfs_fw_resource_cnt) {
		FUNC2(ha->dfs_fw_resource_cnt);
		ha->dfs_fw_resource_cnt = NULL;
	}

	if (ha->dfs_tgt_counters) {
		FUNC2(ha->dfs_tgt_counters);
		ha->dfs_tgt_counters = NULL;
	}

	if (ha->dfs_fce) {
		FUNC2(ha->dfs_fce);
		ha->dfs_fce = NULL;
	}

	if (ha->dfs_dir) {
		FUNC2(ha->dfs_dir);
		ha->dfs_dir = NULL;
		FUNC0(&qla2x00_dfs_root_count);
	}

	if (FUNC1(&qla2x00_dfs_root_count) == 0 &&
	    qla2x00_dfs_root) {
		FUNC2(qla2x00_dfs_root);
		qla2x00_dfs_root = NULL;
	}

	return 0;
}