
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flt_chap_size; } ;
struct scsi_qla_host {scalar_t__ chap_list; TYPE_1__ hw; } ;
struct ql4_chap_table {scalar_t__ cookie; } ;
typedef int int16_t ;


 int CHAP_VALID_COOKIE ;
 int KERN_ERR ;
 int MAX_CHAP_ENTRIES_40XX ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 scalar_t__ __constant_cpu_to_le16 (int ) ;
 scalar_t__ is_qla80XX (struct scsi_qla_host*) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;

__attribute__((used)) static int qla4xxx_get_chap_by_index(struct scsi_qla_host *ha,
         int16_t chap_index,
         struct ql4_chap_table **chap_entry)
{
 int rval = QLA_ERROR;
 int max_chap_entries;

 if (!ha->chap_list) {
  ql4_printk(KERN_ERR, ha, "CHAP table cache is empty!\n");
  rval = QLA_ERROR;
  goto exit_get_chap;
 }

 if (is_qla80XX(ha))
  max_chap_entries = (ha->hw.flt_chap_size / 2) /
       sizeof(struct ql4_chap_table);
 else
  max_chap_entries = MAX_CHAP_ENTRIES_40XX;

 if (chap_index > max_chap_entries) {
  ql4_printk(KERN_ERR, ha, "Invalid Chap index\n");
  rval = QLA_ERROR;
  goto exit_get_chap;
 }

 *chap_entry = (struct ql4_chap_table *)ha->chap_list + chap_index;
 if ((*chap_entry)->cookie !=
      __constant_cpu_to_le16(CHAP_VALID_COOKIE)) {
  rval = QLA_ERROR;
  *chap_entry = ((void*)0);
 } else {
  rval = QLA_SUCCESS;
 }

exit_get_chap:
 return rval;
}
