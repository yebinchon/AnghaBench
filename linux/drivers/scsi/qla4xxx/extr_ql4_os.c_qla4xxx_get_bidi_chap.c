
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flt_chap_size; } ;
struct scsi_qla_host {int chap_sem; scalar_t__ chap_list; TYPE_1__ hw; } ;
struct ql4_chap_table {scalar_t__ cookie; int flags; int name; int secret; } ;


 int BIT_6 ;
 int BIT_7 ;
 int CHAP_VALID_COOKIE ;
 int EINVAL ;
 int KERN_ERR ;
 int MAX_CHAP_ENTRIES_40XX ;
 int QL4_CHAP_MAX_NAME_LEN ;
 int QL4_CHAP_MAX_SECRET_LEN ;
 scalar_t__ __constant_cpu_to_le16 (int ) ;
 scalar_t__ is_qla80XX (struct scsi_qla_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int strlcpy (char*,int ,int ) ;

__attribute__((used)) static int qla4xxx_get_bidi_chap(struct scsi_qla_host *ha, char *username,
       char *password)
{
 int i, ret = -EINVAL;
 int max_chap_entries = 0;
 struct ql4_chap_table *chap_table;

 if (is_qla80XX(ha))
  max_chap_entries = (ha->hw.flt_chap_size / 2) /
      sizeof(struct ql4_chap_table);
 else
  max_chap_entries = MAX_CHAP_ENTRIES_40XX;

 if (!ha->chap_list) {
  ql4_printk(KERN_ERR, ha, "Do not have CHAP table cache\n");
  return ret;
 }

 mutex_lock(&ha->chap_sem);
 for (i = 0; i < max_chap_entries; i++) {
  chap_table = (struct ql4_chap_table *)ha->chap_list + i;
  if (chap_table->cookie !=
      __constant_cpu_to_le16(CHAP_VALID_COOKIE)) {
   continue;
  }

  if (chap_table->flags & BIT_7)
   continue;

  if (!(chap_table->flags & BIT_6))
   continue;

  strlcpy(password, chap_table->secret, QL4_CHAP_MAX_SECRET_LEN);
  strlcpy(username, chap_table->name, QL4_CHAP_MAX_NAME_LEN);
  ret = 0;
  break;
 }
 mutex_unlock(&ha->chap_sem);

 return ret;
}
