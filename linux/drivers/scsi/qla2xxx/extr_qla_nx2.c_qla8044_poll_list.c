
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct qla8044_reset_entry_hdr {scalar_t__ count; scalar_t__ delay; } ;
struct qla8044_poll {int test_value; int test_mask; } ;
struct qla8044_entry {int arg2; int arg1; } ;


 scalar_t__ qla8044_poll_reg (struct scsi_qla_host*,int ,long,int ,int ) ;
 int qla8044_rd_reg_indirect (struct scsi_qla_host*,int ,scalar_t__*) ;

__attribute__((used)) static void
qla8044_poll_list(struct scsi_qla_host *vha,
 struct qla8044_reset_entry_hdr *p_hdr)
{
 long delay;
 struct qla8044_entry *p_entry;
 struct qla8044_poll *p_poll;
 uint32_t i;
 uint32_t value;

 p_poll = (struct qla8044_poll *)
  ((char *)p_hdr + sizeof(struct qla8044_reset_entry_hdr));




 p_entry = (struct qla8044_entry *)((char *)p_poll +
     sizeof(struct qla8044_poll));

 delay = (long)p_hdr->delay;

 if (!delay) {
  for (i = 0; i < p_hdr->count; i++, p_entry++)
   qla8044_poll_reg(vha, p_entry->arg1,
       delay, p_poll->test_mask, p_poll->test_value);
 } else {
  for (i = 0; i < p_hdr->count; i++, p_entry++) {
   if (delay) {
    if (qla8044_poll_reg(vha,
        p_entry->arg1, delay,
        p_poll->test_mask,
        p_poll->test_value)) {





     qla8044_rd_reg_indirect(vha,
         p_entry->arg1, &value);
     qla8044_rd_reg_indirect(vha,
         p_entry->arg2, &value);
    }
   }
  }
 }
}
