
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int KERN_INFO ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int TIMEOUT_100_MS ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int ql4_84xx_ipmdio_rd_reg (struct scsi_qla_host*,int,int,int,int,int*) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static uint32_t ql4_84xx_poll_wait_ipmdio_bus_idle(struct scsi_qla_host *ha,
          uint32_t addr1,
          uint32_t addr2,
          uint32_t addr3,
          uint32_t mask)
{
 unsigned long timeout;
 uint32_t temp;
 uint32_t rval = QLA_SUCCESS;

 timeout = jiffies + msecs_to_jiffies(TIMEOUT_100_MS);
 do {
  ql4_84xx_ipmdio_rd_reg(ha, addr1, addr3, mask, addr2, &temp);
  if ((temp & 0x1) != 1)
   break;
  if (time_after_eq(jiffies, timeout)) {
   ql4_printk(KERN_INFO, ha, "Error in processing mdiobus idle\n");
   return QLA_ERROR;
  }
 } while (1);

 return rval;
}
