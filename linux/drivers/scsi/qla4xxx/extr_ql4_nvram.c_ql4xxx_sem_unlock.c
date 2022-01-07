
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_qla_host {int host_no; int hardware_lock; } ;


 int DEBUG2 (int ) ;
 int isp_semaphore (struct scsi_qla_host*) ;
 int printk (char*,int ,int ) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int ) ;

void ql4xxx_sem_unlock(struct scsi_qla_host * ha, u32 sem_mask)
{
 unsigned long flags;

 spin_lock_irqsave(&ha->hardware_lock, flags);
 writel(sem_mask, isp_semaphore(ha));
 readl(isp_semaphore(ha));
 spin_unlock_irqrestore(&ha->hardware_lock, flags);

 DEBUG2(printk("scsi%ld : UNLOCK SEM - mask= 0x%x\n", ha->host_no,
        sem_mask));
}
