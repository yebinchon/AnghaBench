
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct qla_fcp_prio_entry {int flags; } ;
struct qla_fcp_prio_cfg {int num_entries; struct qla_fcp_prio_entry* entry; } ;
typedef int scsi_qla_host_t ;


 int FCP_PRIO_ENTRY_TAG_VALID ;
 scalar_t__ memcmp (int*,char*,int) ;
 int ql_dbg (int ,int *,int,char*,...) ;
 int ql_dbg_user ;

int
qla24xx_fcp_prio_cfg_valid(scsi_qla_host_t *vha,
 struct qla_fcp_prio_cfg *pri_cfg, uint8_t flag)
{
 int i, ret, num_valid;
 uint8_t *bcode;
 struct qla_fcp_prio_entry *pri_entry;
 uint32_t *bcode_val_ptr, bcode_val;

 ret = 1;
 num_valid = 0;
 bcode = (uint8_t *)pri_cfg;
 bcode_val_ptr = (uint32_t *)pri_cfg;
 bcode_val = (uint32_t)(*bcode_val_ptr);

 if (bcode_val == 0xFFFFFFFF) {

  ql_dbg(ql_dbg_user, vha, 0x7051,
      "No FCP Priority config data.\n");
  return 0;
 }

 if (memcmp(bcode, "HQOS", 4)) {

  ql_dbg(ql_dbg_user, vha, 0x7052,
      "Invalid FCP Priority data header. bcode=0x%x.\n",
      bcode_val);
  return 0;
 }
 if (flag != 1)
  return ret;

 pri_entry = &pri_cfg->entry[0];
 for (i = 0; i < pri_cfg->num_entries; i++) {
  if (pri_entry->flags & FCP_PRIO_ENTRY_TAG_VALID)
   num_valid++;
  pri_entry++;
 }

 if (num_valid == 0) {

  ql_dbg(ql_dbg_user, vha, 0x7053,
      "No valid FCP Priority data entries.\n");
  ret = 0;
 } else {

  ql_dbg(ql_dbg_user, vha, 0x7054,
      "Valid FCP priority data. num entries = %d.\n",
      num_valid);
 }

 return ret;
}
