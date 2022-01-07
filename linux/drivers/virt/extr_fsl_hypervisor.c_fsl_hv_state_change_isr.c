
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct doorbell_isr {int partition; int doorbell; } ;
typedef int irqreturn_t ;


 unsigned int FH_PARTITION_STOPPED ;
 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int fh_partition_get_status (int ,unsigned int*) ;
 int fsl_hv_queue_doorbell (int ) ;

__attribute__((used)) static irqreturn_t fsl_hv_state_change_isr(int irq, void *data)
{
 unsigned int status;
 struct doorbell_isr *dbisr = data;
 int ret;


 fsl_hv_queue_doorbell(dbisr->doorbell);


 ret = fh_partition_get_status(dbisr->partition, &status);
 if (!ret && (status == FH_PARTITION_STOPPED))
  return IRQ_WAKE_THREAD;

 return IRQ_HANDLED;
}
