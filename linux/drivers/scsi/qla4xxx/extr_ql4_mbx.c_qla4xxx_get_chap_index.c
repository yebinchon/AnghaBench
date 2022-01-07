
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int flt_chap_size; } ;
struct scsi_qla_host {int chap_sem; scalar_t__ chap_list; TYPE_1__ hw; } ;
struct ql4_chap_table {scalar_t__ cookie; int flags; int name; int secret; } ;


 int BIT_6 ;
 int BIT_7 ;
 int CHAP_VALID_COOKIE ;
 int KERN_ERR ;
 int MAX_CHAP_ENTRIES_40XX ;
 int MAX_CHAP_NAME_LEN ;
 int MAX_CHAP_SECRET_LEN ;
 int MAX_RESRV_CHAP_IDX ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 scalar_t__ __constant_cpu_to_le16 (int ) ;
 scalar_t__ is_qla80XX (struct scsi_qla_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4xxx_set_chap (struct scsi_qla_host*,char*,char*,int,int) ;
 int strncmp (int ,char*,int ) ;

int qla4xxx_get_chap_index(struct scsi_qla_host *ha, char *username,
      char *password, int bidi, uint16_t *chap_index)
{
 int i, rval;
 int free_index = -1;
 int found_index = 0;
 int max_chap_entries = 0;
 struct ql4_chap_table *chap_table;

 if (is_qla80XX(ha))
  max_chap_entries = (ha->hw.flt_chap_size / 2) /
      sizeof(struct ql4_chap_table);
 else
  max_chap_entries = MAX_CHAP_ENTRIES_40XX;

 if (!ha->chap_list) {
  ql4_printk(KERN_ERR, ha, "Do not have CHAP table cache\n");
  return QLA_ERROR;
 }

 if (!username || !password) {
  ql4_printk(KERN_ERR, ha, "Do not have username and psw\n");
  return QLA_ERROR;
 }

 mutex_lock(&ha->chap_sem);
 for (i = 0; i < max_chap_entries; i++) {
  chap_table = (struct ql4_chap_table *)ha->chap_list + i;
  if (chap_table->cookie !=
      __constant_cpu_to_le16(CHAP_VALID_COOKIE)) {
   if (i > MAX_RESRV_CHAP_IDX && free_index == -1)
    free_index = i;
   continue;
  }
  if (bidi) {
   if (chap_table->flags & BIT_7)
    continue;
  } else {
   if (chap_table->flags & BIT_6)
    continue;
  }
  if (!strncmp(chap_table->secret, password,
        MAX_CHAP_SECRET_LEN) &&
      !strncmp(chap_table->name, username,
        MAX_CHAP_NAME_LEN)) {
   *chap_index = i;
   found_index = 1;
   break;
  }
 }




 if (!found_index && free_index != -1) {
  rval = qla4xxx_set_chap(ha, username, password,
     free_index, bidi);
  if (!rval) {
   *chap_index = free_index;
   found_index = 1;
  }
 }

 mutex_unlock(&ha->chap_sem);

 if (found_index)
  return QLA_SUCCESS;
 return QLA_ERROR;
}
