
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct qla8044_reset_entry_hdr {scalar_t__ count; scalar_t__ delay; } ;
struct qla8044_entry {int arg2; int arg1; } ;


 int qla8044_wr_reg_indirect (struct scsi_qla_host*,int ,int ) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static void
qla8044_write_list(struct scsi_qla_host *vha,
 struct qla8044_reset_entry_hdr *p_hdr)
{
 struct qla8044_entry *p_entry;
 uint32_t i;

 p_entry = (struct qla8044_entry *)((char *)p_hdr +
     sizeof(struct qla8044_reset_entry_hdr));

 for (i = 0; i < p_hdr->count; i++, p_entry++) {
  qla8044_wr_reg_indirect(vha, p_entry->arg1, p_entry->arg2);
  if (p_hdr->delay)
   udelay((uint32_t)(p_hdr->delay));
 }
}
