
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct scsi_qla_host {int host_no; int hardware_lock; } ;


 int DEBUG2 (int ) ;
 int isp_semaphore (struct scsi_qla_host*) ;
 int printk (char*,int ,int,int,int) ;
 int readw (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

int ql4xxx_sem_lock(struct scsi_qla_host * ha, u32 sem_mask, u32 sem_bits)
{
 uint32_t value;
 unsigned long flags;

 spin_lock_irqsave(&ha->hardware_lock, flags);
 writel((sem_mask | sem_bits), isp_semaphore(ha));
 value = readw(isp_semaphore(ha));
 spin_unlock_irqrestore(&ha->hardware_lock, flags);
 if ((value & (sem_mask >> 16)) == sem_bits) {
  DEBUG2(printk("scsi%ld : Got SEM LOCK - mask= 0x%x, code = "
         "0x%x, sema code=0x%x\n", ha->host_no,
         sem_mask, sem_bits, value));
  return 1;
 }
 return 0;
}
