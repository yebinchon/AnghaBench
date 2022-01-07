
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_info {int work_task; int dma_dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;
 int vio_disable_interrupts (int ) ;

__attribute__((used)) static irqreturn_t ibmvscsis_interrupt(int dummy, void *data)
{
 struct scsi_info *vscsi = data;

 vio_disable_interrupts(vscsi->dma_dev);
 tasklet_schedule(&vscsi->work_task);

 return IRQ_HANDLED;
}
