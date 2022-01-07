
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchtec_ntb {int ntb; TYPE_1__* stdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int dev_dbg (int *,char*) ;
 int ntb_db_event (int *,int ) ;

__attribute__((used)) static irqreturn_t switchtec_ntb_doorbell_isr(int irq, void *dev)
{
 struct switchtec_ntb *sndev = dev;

 dev_dbg(&sndev->stdev->dev, "doorbell\n");

 ntb_db_event(&sndev->ntb, 0);

 return IRQ_HANDLED;
}
