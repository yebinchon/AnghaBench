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
struct scsi_qla_host {int /*<<< orphan*/  fw_ddb_dma_pool; } ;
struct dev_db_entry {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int MAX_DEV_DB_ENTRIES ; 
 int MAX_DEV_DB_ENTRIES_40XX ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 struct dev_db_entry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dev_db_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,...) ; 
 int FUNC4 (struct dev_db_entry*,struct dev_db_entry*) ; 
 int FUNC5 (struct scsi_qla_host*,struct dev_db_entry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct scsi_qla_host *ha,
				     struct dev_db_entry *fw_ddb_entry,
				     uint32_t fw_idx, uint32_t *flash_index)
{
	struct dev_db_entry *flash_ddb_entry;
	dma_addr_t flash_ddb_entry_dma;
	uint32_t idx = 0;
	int max_ddbs;
	int ret = QLA_ERROR, status;

	max_ddbs =  FUNC2(ha) ? MAX_DEV_DB_ENTRIES_40XX :
				     MAX_DEV_DB_ENTRIES;

	flash_ddb_entry = FUNC0(ha->fw_ddb_dma_pool, GFP_KERNEL,
					 &flash_ddb_entry_dma);
	if (flash_ddb_entry == NULL || fw_ddb_entry == NULL) {
		FUNC3(KERN_ERR, ha, "Out of memory\n");
		goto exit_find_st_idx;
	}

	status = FUNC5(ha, flash_ddb_entry,
					  flash_ddb_entry_dma, fw_idx);
	if (status == QLA_SUCCESS) {
		status = FUNC4(fw_ddb_entry, flash_ddb_entry);
		if (status == QLA_SUCCESS) {
			*flash_index = fw_idx;
			ret = QLA_SUCCESS;
			goto exit_find_st_idx;
		}
	}

	for (idx = 0; idx < max_ddbs; idx++) {
		status = FUNC5(ha, flash_ddb_entry,
						  flash_ddb_entry_dma, idx);
		if (status == QLA_ERROR)
			continue;

		status = FUNC4(fw_ddb_entry, flash_ddb_entry);
		if (status == QLA_SUCCESS) {
			*flash_index = idx;
			ret = QLA_SUCCESS;
			goto exit_find_st_idx;
		}
	}

	if (idx == max_ddbs)
		FUNC3(KERN_ERR, ha, "Failed to find ST [%d] in flash\n",
			   fw_idx);

exit_find_st_idx:
	if (flash_ddb_entry)
		FUNC1(ha->fw_ddb_dma_pool, flash_ddb_entry,
			      flash_ddb_entry_dma);

	return ret;
}