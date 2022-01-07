
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int flt_chap_size; } ;
struct scsi_qla_host {int chap_sem; scalar_t__ chap_list; TYPE_1__ hw; } ;
struct ql4_chap_table {scalar_t__ cookie; int flags; int name; int secret; } ;


 int BIT_7 ;
 int CHAP_VALID_COOKIE ;
 int KERN_ERR ;
 int MAX_CHAP_ENTRIES_40XX ;
 int MAX_CHAP_NAME_LEN ;
 int MAX_CHAP_SECRET_LEN ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 scalar_t__ __constant_cpu_to_le16 (int ) ;
 scalar_t__ is_qla80XX (struct scsi_qla_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int strlcpy (char*,int ,int ) ;

int qla4xxx_get_uni_chap_at_index(struct scsi_qla_host *ha, char *username,
      char *password, uint16_t chap_index)
{
 int rval = QLA_ERROR;
 struct ql4_chap_table *chap_table = ((void*)0);
 int max_chap_entries;

 if (!ha->chap_list) {
  ql4_printk(KERN_ERR, ha, "Do not have CHAP table cache\n");
  rval = QLA_ERROR;
  goto exit_uni_chap;
 }

 if (!username || !password) {
  ql4_printk(KERN_ERR, ha, "No memory for username & secret\n");
  rval = QLA_ERROR;
  goto exit_uni_chap;
 }

 if (is_qla80XX(ha))
  max_chap_entries = (ha->hw.flt_chap_size / 2) /
       sizeof(struct ql4_chap_table);
 else
  max_chap_entries = MAX_CHAP_ENTRIES_40XX;

 if (chap_index > max_chap_entries) {
  ql4_printk(KERN_ERR, ha, "Invalid Chap index\n");
  rval = QLA_ERROR;
  goto exit_uni_chap;
 }

 mutex_lock(&ha->chap_sem);
 chap_table = (struct ql4_chap_table *)ha->chap_list + chap_index;
 if (chap_table->cookie != __constant_cpu_to_le16(CHAP_VALID_COOKIE)) {
  rval = QLA_ERROR;
  goto exit_unlock_uni_chap;
 }

 if (!(chap_table->flags & BIT_7)) {
  ql4_printk(KERN_ERR, ha, "Unidirectional entry not set\n");
  rval = QLA_ERROR;
  goto exit_unlock_uni_chap;
 }

 strlcpy(password, chap_table->secret, MAX_CHAP_SECRET_LEN);
 strlcpy(username, chap_table->name, MAX_CHAP_NAME_LEN);

 rval = QLA_SUCCESS;

exit_unlock_uni_chap:
 mutex_unlock(&ha->chap_sem);
exit_uni_chap:
 return rval;
}
