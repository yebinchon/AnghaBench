
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dma_intr; } ;


 int IRQ_HANDLED ;
 int MVME147_IRQ_SCSI_PORT ;
 TYPE_1__* m147_pcc ;
 int wd33c93_intr (struct Scsi_Host*) ;

__attribute__((used)) static irqreturn_t mvme147_intr(int irq, void *data)
{
 struct Scsi_Host *instance = data;

 if (irq == MVME147_IRQ_SCSI_PORT)
  wd33c93_intr(instance);
 else
  m147_pcc->dma_intr = 0x89;
 return IRQ_HANDLED;
}
