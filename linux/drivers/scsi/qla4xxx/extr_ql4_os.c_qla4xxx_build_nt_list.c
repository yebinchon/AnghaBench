
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct scsi_qla_host {int fw_ddb_dma_pool; } ;
struct qla_ddb_index {int fw_ddb_idx; int list; int fw_ddb; int * flash_isid; } ;
struct list_head {int dummy; } ;
struct dev_db_entry {struct dev_db_entry* isid; int ddb_link; scalar_t__ iscsi_name; } ;
struct ddb_entry {int dummy; } ;
typedef int dma_addr_t ;


 int DDB_DS_NO_CONNECTION_ACTIVE ;
 int DDB_DS_SESSION_FAILED ;
 int DEBUG2 (int ) ;
 int GFP_KERNEL ;
 int INIT_ADAPTER ;
 int KERN_ERR ;
 int KERN_INFO ;
 int MAX_DEV_DB_ENTRIES ;
 int MAX_DEV_DB_ENTRIES_40XX ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int RESET_ADAPTER ;
 struct dev_db_entry* dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,struct dev_db_entry*,int ) ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 int le16_to_cpu (int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int memcpy (int *,struct dev_db_entry*,int) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,...) ;
 int qla4xxx_get_fwddb_entry (struct scsi_qla_host*,int,struct dev_db_entry*,int ,int *,int*,int*,int*,int *,int*) ;
 int qla4xxx_is_flash_ddb_exists (struct scsi_qla_host*,struct list_head*,struct dev_db_entry*) ;
 int qla4xxx_is_session_exists (struct scsi_qla_host*,struct dev_db_entry*,int*) ;
 struct ddb_entry* qla4xxx_lookup_ddb_by_fw_index (struct scsi_qla_host*,int) ;
 int qla4xxx_sess_conn_setup (struct scsi_qla_host*,struct dev_db_entry*,int,int) ;
 int qla4xxx_update_fw_ddb_link (struct scsi_qla_host*,struct list_head*,struct dev_db_entry*) ;
 int qla4xxx_update_sess_disc_idx (struct scsi_qla_host*,struct ddb_entry*,struct dev_db_entry*) ;
 int qla4xxx_verify_boot_idx (struct scsi_qla_host*,int) ;
 scalar_t__ strlen (char*) ;
 int vfree (struct qla_ddb_index*) ;
 struct qla_ddb_index* vmalloc (int) ;

__attribute__((used)) static void qla4xxx_build_nt_list(struct scsi_qla_host *ha,
      struct list_head *list_nt,
      struct list_head *list_st,
      int is_reset)
{
 struct dev_db_entry *fw_ddb_entry;
 struct ddb_entry *ddb_entry = ((void*)0);
 dma_addr_t fw_ddb_dma;
 int max_ddbs;
 int fw_idx_size;
 int ret;
 uint32_t idx = 0, next_idx = 0;
 uint32_t state = 0, conn_err = 0;
 uint32_t ddb_idx = -1;
 uint16_t conn_id = 0;
 uint16_t ddb_link = -1;
 struct qla_ddb_index *nt_ddb_idx;

 fw_ddb_entry = dma_pool_alloc(ha->fw_ddb_dma_pool, GFP_KERNEL,
          &fw_ddb_dma);
 if (fw_ddb_entry == ((void*)0)) {
  DEBUG2(ql4_printk(KERN_ERR, ha, "Out of memory\n"));
  goto exit_nt_list;
 }
 max_ddbs = is_qla40XX(ha) ? MAX_DEV_DB_ENTRIES_40XX :
         MAX_DEV_DB_ENTRIES;
 fw_idx_size = sizeof(struct qla_ddb_index);

 for (idx = 0; idx < max_ddbs; idx = next_idx) {
  ret = qla4xxx_get_fwddb_entry(ha, idx, fw_ddb_entry, fw_ddb_dma,
           ((void*)0), &next_idx, &state,
           &conn_err, ((void*)0), &conn_id);
  if (ret == QLA_ERROR)
   break;

  if (qla4xxx_verify_boot_idx(ha, idx) != QLA_SUCCESS)
   goto continue_next_nt;


  if (strlen((char *) fw_ddb_entry->iscsi_name) == 0)
   goto continue_next_nt;

  ddb_link = le16_to_cpu(fw_ddb_entry->ddb_link);
  if (ddb_link < max_ddbs)
   qla4xxx_update_fw_ddb_link(ha, list_st, fw_ddb_entry);

  if (!(state == DDB_DS_NO_CONNECTION_ACTIVE ||
      state == DDB_DS_SESSION_FAILED) &&
      (is_reset == INIT_ADAPTER))
   goto continue_next_nt;

  DEBUG2(ql4_printk(KERN_INFO, ha,
      "Adding  DDB to session = 0x%x\n", idx));

  if (is_reset == INIT_ADAPTER) {
   nt_ddb_idx = vmalloc(fw_idx_size);
   if (!nt_ddb_idx)
    break;

   nt_ddb_idx->fw_ddb_idx = idx;





   memcpy(&nt_ddb_idx->flash_isid[0],
          &fw_ddb_entry->isid[0],
          sizeof(nt_ddb_idx->flash_isid));

   ret = qla4xxx_is_flash_ddb_exists(ha, list_nt,
         fw_ddb_entry);
   if (ret == QLA_SUCCESS) {

    vfree(nt_ddb_idx);
    goto continue_next_nt;
   }


   memcpy(&nt_ddb_idx->fw_ddb, fw_ddb_entry,
          sizeof(struct dev_db_entry));

   list_add_tail(&nt_ddb_idx->list, list_nt);
  } else if (is_reset == RESET_ADAPTER) {
   ret = qla4xxx_is_session_exists(ha, fw_ddb_entry,
       &ddb_idx);
   if (ret == QLA_SUCCESS) {
    ddb_entry = qla4xxx_lookup_ddb_by_fw_index(ha,
               ddb_idx);
    if (ddb_entry != ((void*)0))
     qla4xxx_update_sess_disc_idx(ha,
             ddb_entry,
          fw_ddb_entry);
    goto continue_next_nt;
   }
  }

  ret = qla4xxx_sess_conn_setup(ha, fw_ddb_entry, is_reset, idx);
  if (ret == QLA_ERROR)
   goto exit_nt_list;

continue_next_nt:
  if (next_idx == 0)
   break;
 }

exit_nt_list:
 if (fw_ddb_entry)
  dma_pool_free(ha->fw_ddb_dma_pool, fw_ddb_entry, fw_ddb_dma);
}
