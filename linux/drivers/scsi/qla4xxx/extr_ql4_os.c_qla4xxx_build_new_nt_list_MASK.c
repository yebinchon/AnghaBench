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
typedef  int uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  fw_ddb_dma_pool; } ;
struct qla_ddb_index {int fw_ddb_idx; int /*<<< orphan*/  list; } ;
struct list_head {int dummy; } ;
struct dev_db_entry {int /*<<< orphan*/  ddb_link; scalar_t__ iscsi_name; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int DDB_DS_NO_CONNECTION_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int MAX_DEV_DB_ENTRIES ; 
 int MAX_DEV_DB_ENTRIES_40XX ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  RESET_ADAPTER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct dev_db_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dev_db_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,...) ; 
 int FUNC7 (struct scsi_qla_host*,int,struct dev_db_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int*,int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (struct scsi_qla_host*,struct dev_db_entry*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct scsi_qla_host*,struct dev_db_entry*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct qla_ddb_index*) ; 
 struct qla_ddb_index* FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct scsi_qla_host *ha,
				      struct list_head *list_nt,
				      uint16_t target_id)
{
	struct dev_db_entry *fw_ddb_entry;
	dma_addr_t fw_ddb_dma;
	int max_ddbs;
	int fw_idx_size;
	int ret;
	uint32_t idx = 0, next_idx = 0;
	uint32_t state = 0, conn_err = 0;
	uint16_t conn_id = 0;
	struct qla_ddb_index  *nt_ddb_idx;

	fw_ddb_entry = FUNC2(ha->fw_ddb_dma_pool, GFP_KERNEL,
				      &fw_ddb_dma);
	if (fw_ddb_entry == NULL) {
		FUNC0(FUNC6(KERN_ERR, ha, "Out of memory\n"));
		goto exit_new_nt_list;
	}
	max_ddbs =  FUNC4(ha) ? MAX_DEV_DB_ENTRIES_40XX :
				     MAX_DEV_DB_ENTRIES;
	fw_idx_size = sizeof(struct qla_ddb_index);

	for (idx = 0; idx < max_ddbs; idx = next_idx) {
		ret = FUNC7(ha, idx, fw_ddb_entry, fw_ddb_dma,
					      NULL, &next_idx, &state,
					      &conn_err, NULL, &conn_id);
		if (ret == QLA_ERROR)
			break;

		/* Check if NT, then add it to list */
		if (FUNC10((char *)fw_ddb_entry->iscsi_name) == 0)
			goto continue_next_new_nt;

		if (!(state == DDB_DS_NO_CONNECTION_ACTIVE))
			goto continue_next_new_nt;

		FUNC0(FUNC6(KERN_INFO, ha,
				  "Adding  DDB to session = 0x%x\n", idx));

		nt_ddb_idx = FUNC12(fw_idx_size);
		if (!nt_ddb_idx)
			break;

		nt_ddb_idx->fw_ddb_idx = idx;

		ret = FUNC8(ha, fw_ddb_entry, NULL);
		if (ret == QLA_SUCCESS) {
			/* free nt_ddb_idx and do not add to list_nt */
			FUNC11(nt_ddb_idx);
			goto continue_next_new_nt;
		}

		if (target_id < max_ddbs)
			fw_ddb_entry->ddb_link = FUNC1(target_id);

		FUNC5(&nt_ddb_idx->list, list_nt);

		ret = FUNC9(ha, fw_ddb_entry, RESET_ADAPTER,
					      idx);
		if (ret == QLA_ERROR)
			goto exit_new_nt_list;

continue_next_new_nt:
		if (next_idx == 0)
			break;
	}

exit_new_nt_list:
	if (fw_ddb_entry)
		FUNC3(ha->fw_ddb_dma_pool, fw_ddb_entry, fw_ddb_dma);
}