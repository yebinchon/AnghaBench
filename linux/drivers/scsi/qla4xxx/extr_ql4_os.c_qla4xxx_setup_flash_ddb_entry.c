
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct scsi_qla_host {int pri_ddb_idx; int sec_ddb_idx; } ;
struct TYPE_2__ {int iscsi_def_time2wait; int def_timeout; } ;
struct ddb_entry {int default_relogin_timeout; int flags; TYPE_1__ fw_ddb_entry; void* default_time2wait; int relogin_retry_count; int relogin_timer; int retry_relogin_timer; void* chap_tbl_idx; int ddb_change; int unblock_sess; struct scsi_qla_host* ha; int fw_ddb_device_state; void* fw_ddb_index; int ddb_type; } ;


 int DDB_DS_NO_CONNECTION_ACTIVE ;
 int DF_BOOT_TGT ;
 int FLASH_DDB ;
 void* INVALID_ENTRY ;
 int LOGIN_TOV ;
 int atomic_set (int *,void*) ;
 void* le16_to_cpu (int ) ;
 scalar_t__ ql4xdisablesysfsboot ;
 int qla4xxx_flash_ddb_change ;
 int qla4xxx_unblock_flash_ddb ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void qla4xxx_setup_flash_ddb_entry(struct scsi_qla_host *ha,
       struct ddb_entry *ddb_entry,
       uint16_t idx)
{
 uint16_t def_timeout;

 ddb_entry->ddb_type = FLASH_DDB;
 ddb_entry->fw_ddb_index = INVALID_ENTRY;
 ddb_entry->fw_ddb_device_state = DDB_DS_NO_CONNECTION_ACTIVE;
 ddb_entry->ha = ha;
 ddb_entry->unblock_sess = qla4xxx_unblock_flash_ddb;
 ddb_entry->ddb_change = qla4xxx_flash_ddb_change;
 ddb_entry->chap_tbl_idx = INVALID_ENTRY;

 atomic_set(&ddb_entry->retry_relogin_timer, INVALID_ENTRY);
 atomic_set(&ddb_entry->relogin_timer, 0);
 atomic_set(&ddb_entry->relogin_retry_count, 0);
 def_timeout = le16_to_cpu(ddb_entry->fw_ddb_entry.def_timeout);
 ddb_entry->default_relogin_timeout =
  (def_timeout > LOGIN_TOV) && (def_timeout < LOGIN_TOV * 10) ?
  def_timeout : LOGIN_TOV;
 ddb_entry->default_time2wait =
  le16_to_cpu(ddb_entry->fw_ddb_entry.iscsi_def_time2wait);

 if (ql4xdisablesysfsboot &&
     (idx == ha->pri_ddb_idx || idx == ha->sec_ddb_idx))
  set_bit(DF_BOOT_TGT, &ddb_entry->flags);
}
