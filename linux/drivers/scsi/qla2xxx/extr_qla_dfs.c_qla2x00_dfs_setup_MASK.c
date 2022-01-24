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
struct TYPE_5__ {void* dfs_naqp; void* dfs_tgt_sess; void* dfs_tgt_port_database; } ;
struct qla_hw_data {void* dfs_dir; TYPE_1__ tgt; void* dfs_fce; void* dfs_tgt_counters; void* dfs_fw_resource_cnt; int /*<<< orphan*/  fce_mutex; int /*<<< orphan*/  fce; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_str; struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  QLA2XXX_DRIVER_NAME ; 
 int S_IRUSR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC8 (char*,int,void*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dfs_fce_ops ; 
 int /*<<< orphan*/  dfs_fw_resource_cnt_ops ; 
 int /*<<< orphan*/  dfs_naqp_ops ; 
 int /*<<< orphan*/  dfs_tgt_counters_ops ; 
 int /*<<< orphan*/  dfs_tgt_port_database_ops ; 
 int /*<<< orphan*/  dfs_tgt_sess_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * qla2x00_dfs_root ; 
 int /*<<< orphan*/  qla2x00_dfs_root_count ; 

int
FUNC10(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC0(ha) && !FUNC3(ha) && !FUNC4(ha) &&
	    !FUNC1(ha) && !FUNC2(ha))
		goto out;
	if (!ha->fce)
		goto out;

	if (qla2x00_dfs_root)
		goto create_dir;

	FUNC6(&qla2x00_dfs_root_count, 0);
	qla2x00_dfs_root = FUNC7(QLA2XXX_DRIVER_NAME, NULL);

create_dir:
	if (ha->dfs_dir)
		goto create_nodes;

	FUNC9(&ha->fce_mutex);
	ha->dfs_dir = FUNC7(vha->host_str, qla2x00_dfs_root);

	FUNC5(&qla2x00_dfs_root_count);

create_nodes:
	ha->dfs_fw_resource_cnt = FUNC8("fw_resource_count",
	    S_IRUSR, ha->dfs_dir, vha, &dfs_fw_resource_cnt_ops);

	ha->dfs_tgt_counters = FUNC8("tgt_counters", S_IRUSR,
	    ha->dfs_dir, vha, &dfs_tgt_counters_ops);

	ha->tgt.dfs_tgt_port_database = FUNC8("tgt_port_database",
	    S_IRUSR,  ha->dfs_dir, vha, &dfs_tgt_port_database_ops);

	ha->dfs_fce = FUNC8("fce", S_IRUSR, ha->dfs_dir, vha,
	    &dfs_fce_ops);

	ha->tgt.dfs_tgt_sess = FUNC8("tgt_sess",
		S_IRUSR, ha->dfs_dir, vha, &dfs_tgt_sess_ops);

	if (FUNC1(ha) || FUNC4(ha) || FUNC2(ha))
		ha->tgt.dfs_naqp = FUNC8("naqp",
		    0400, ha->dfs_dir, vha, &dfs_naqp_ops);
out:
	return 0;
}