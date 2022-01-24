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
typedef  int uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct ql4_tuple_ddb {int dummy; } ;
struct dev_db_entry {int dummy; } ;
struct ddb_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int MAX_DDB_ENTRIES ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*,struct ql4_tuple_ddb*,struct ql4_tuple_ddb*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_db_entry*,struct ql4_tuple_ddb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ddb_entry*,struct ql4_tuple_ddb*) ; 
 struct ddb_entry* FUNC5 (struct scsi_qla_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ql4_tuple_ddb*) ; 
 struct ql4_tuple_ddb* FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct scsi_qla_host *ha,
				     struct dev_db_entry *fw_ddb_entry,
				     uint32_t *index)
{
	struct ddb_entry *ddb_entry;
	struct ql4_tuple_ddb *fw_tddb = NULL;
	struct ql4_tuple_ddb *tmp_tddb = NULL;
	int idx;
	int ret = QLA_ERROR;

	fw_tddb = FUNC7(sizeof(*fw_tddb));
	if (!fw_tddb) {
		FUNC0(FUNC1(KERN_WARNING, ha,
				  "Memory Allocation failed.\n"));
		ret = QLA_SUCCESS;
		goto exit_check;
	}

	tmp_tddb = FUNC7(sizeof(*tmp_tddb));
	if (!tmp_tddb) {
		FUNC0(FUNC1(KERN_WARNING, ha,
				  "Memory Allocation failed.\n"));
		ret = QLA_SUCCESS;
		goto exit_check;
	}

	FUNC3(fw_ddb_entry, fw_tddb, NULL);

	for (idx = 0; idx < MAX_DDB_ENTRIES; idx++) {
		ddb_entry = FUNC5(ha, idx);
		if (ddb_entry == NULL)
			continue;

		FUNC4(ddb_entry, tmp_tddb);
		if (!FUNC2(ha, fw_tddb, tmp_tddb, false)) {
			ret = QLA_SUCCESS; /* found */
			if (index != NULL)
				*index = idx;
			goto exit_check;
		}
	}

exit_check:
	if (fw_tddb)
		FUNC6(fw_tddb);
	if (tmp_tddb)
		FUNC6(tmp_tddb);
	return ret;
}