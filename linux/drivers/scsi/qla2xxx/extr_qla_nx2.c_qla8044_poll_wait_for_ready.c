
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int TIMEOUT_100_MS ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int ql_log (int ,struct scsi_qla_host*,int,char*) ;
 int ql_log_warn ;
 int qla8044_rd_reg_indirect (struct scsi_qla_host*,int,int*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int
qla8044_poll_wait_for_ready(struct scsi_qla_host *vha, uint32_t addr1,
 uint32_t mask)
{
 unsigned long timeout;
 uint32_t temp;


 timeout = jiffies + msecs_to_jiffies(TIMEOUT_100_MS);
 do {
  qla8044_rd_reg_indirect(vha, addr1, &temp);
  if ((temp & mask) != 0)
   break;
  if (time_after_eq(jiffies, timeout)) {
   ql_log(ql_log_warn, vha, 0xb151,
    "Error in processing rdmdio entry\n");
   return -1;
  }
 } while (1);

 return 0;
}
