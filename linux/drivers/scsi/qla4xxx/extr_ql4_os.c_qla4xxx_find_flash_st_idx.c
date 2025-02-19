
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int fw_ddb_dma_pool; } ;
struct dev_db_entry {int dummy; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 int KERN_ERR ;
 int MAX_DEV_DB_ENTRIES ;
 int MAX_DEV_DB_ENTRIES_40XX ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 struct dev_db_entry* dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,struct dev_db_entry*,int ) ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,...) ;
 int qla4xxx_cmp_fw_stentry (struct dev_db_entry*,struct dev_db_entry*) ;
 int qla4xxx_flashdb_by_index (struct scsi_qla_host*,struct dev_db_entry*,int ,int) ;

__attribute__((used)) static int qla4xxx_find_flash_st_idx(struct scsi_qla_host *ha,
         struct dev_db_entry *fw_ddb_entry,
         uint32_t fw_idx, uint32_t *flash_index)
{
 struct dev_db_entry *flash_ddb_entry;
 dma_addr_t flash_ddb_entry_dma;
 uint32_t idx = 0;
 int max_ddbs;
 int ret = QLA_ERROR, status;

 max_ddbs = is_qla40XX(ha) ? MAX_DEV_DB_ENTRIES_40XX :
         MAX_DEV_DB_ENTRIES;

 flash_ddb_entry = dma_pool_alloc(ha->fw_ddb_dma_pool, GFP_KERNEL,
      &flash_ddb_entry_dma);
 if (flash_ddb_entry == ((void*)0) || fw_ddb_entry == ((void*)0)) {
  ql4_printk(KERN_ERR, ha, "Out of memory\n");
  goto exit_find_st_idx;
 }

 status = qla4xxx_flashdb_by_index(ha, flash_ddb_entry,
       flash_ddb_entry_dma, fw_idx);
 if (status == QLA_SUCCESS) {
  status = qla4xxx_cmp_fw_stentry(fw_ddb_entry, flash_ddb_entry);
  if (status == QLA_SUCCESS) {
   *flash_index = fw_idx;
   ret = QLA_SUCCESS;
   goto exit_find_st_idx;
  }
 }

 for (idx = 0; idx < max_ddbs; idx++) {
  status = qla4xxx_flashdb_by_index(ha, flash_ddb_entry,
        flash_ddb_entry_dma, idx);
  if (status == QLA_ERROR)
   continue;

  status = qla4xxx_cmp_fw_stentry(fw_ddb_entry, flash_ddb_entry);
  if (status == QLA_SUCCESS) {
   *flash_index = idx;
   ret = QLA_SUCCESS;
   goto exit_find_st_idx;
  }
 }

 if (idx == max_ddbs)
  ql4_printk(KERN_ERR, ha, "Failed to find ST [%d] in flash\n",
      fw_idx);

exit_find_st_idx:
 if (flash_ddb_entry)
  dma_pool_free(ha->fw_ddb_dma_pool, flash_ddb_entry,
         flash_ddb_entry_dma);

 return ret;
}
