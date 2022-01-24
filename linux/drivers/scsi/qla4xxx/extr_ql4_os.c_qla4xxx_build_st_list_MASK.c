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
typedef  int /*<<< orphan*/  uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  fw_ddb_dma_pool; } ;
struct qla_ddb_index {int flash_ddb_idx; int fw_ddb_idx; int /*<<< orphan*/  list; } ;
struct list_head {int dummy; } ;
struct dev_db_entry {scalar_t__ iscsi_name; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int DDB_DS_UNASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int MAX_DEV_DB_ENTRIES ; 
 int MAX_DEV_DB_ENTRIES_40XX ; 
 int QLA_ERROR ; 
 struct dev_db_entry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dev_db_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,...) ; 
 int FUNC6 (struct scsi_qla_host*,struct dev_db_entry*,int,int*) ; 
 int FUNC7 (struct scsi_qla_host*,int,struct dev_db_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*) ; 
 struct qla_ddb_index* FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct scsi_qla_host *ha,
				  struct list_head *list_st)
{
	struct qla_ddb_index  *st_ddb_idx;
	int max_ddbs;
	int fw_idx_size;
	struct dev_db_entry *fw_ddb_entry;
	dma_addr_t fw_ddb_dma;
	int ret;
	uint32_t idx = 0, next_idx = 0;
	uint32_t state = 0, conn_err = 0;
	uint32_t flash_index = -1;
	uint16_t conn_id = 0;

	fw_ddb_entry = FUNC1(ha->fw_ddb_dma_pool, GFP_KERNEL,
				      &fw_ddb_dma);
	if (fw_ddb_entry == NULL) {
		FUNC0(FUNC5(KERN_ERR, ha, "Out of memory\n"));
		goto exit_st_list;
	}

	max_ddbs =  FUNC3(ha) ? MAX_DEV_DB_ENTRIES_40XX :
				     MAX_DEV_DB_ENTRIES;
	fw_idx_size = sizeof(struct qla_ddb_index);

	for (idx = 0; idx < max_ddbs; idx = next_idx) {
		ret = FUNC7(ha, idx, fw_ddb_entry, fw_ddb_dma,
					      NULL, &next_idx, &state,
					      &conn_err, NULL, &conn_id);
		if (ret == QLA_ERROR)
			break;

		/* Ignore DDB if invalid state (unassigned) */
		if (state == DDB_DS_UNASSIGNED)
			goto continue_next_st;

		/* Check if ST, add to the list_st */
		if (FUNC8((char *) fw_ddb_entry->iscsi_name) != 0)
			goto continue_next_st;

		st_ddb_idx = FUNC9(fw_idx_size);
		if (!st_ddb_idx)
			break;

		ret = FUNC6(ha, fw_ddb_entry, idx,
						&flash_index);
		if (ret == QLA_ERROR) {
			FUNC5(KERN_ERR, ha,
				   "No flash entry for ST at idx [%d]\n", idx);
			st_ddb_idx->flash_ddb_idx = idx;
		} else {
			FUNC5(KERN_INFO, ha,
				   "ST at idx [%d] is stored at flash [%d]\n",
				   idx, flash_index);
			st_ddb_idx->flash_ddb_idx = flash_index;
		}

		st_ddb_idx->fw_ddb_idx = idx;

		FUNC4(&st_ddb_idx->list, list_st);
continue_next_st:
		if (next_idx == 0)
			break;
	}

exit_st_list:
	if (fw_ddb_entry)
		FUNC2(ha->fw_ddb_dma_pool, fw_ddb_entry, fw_ddb_dma);
}