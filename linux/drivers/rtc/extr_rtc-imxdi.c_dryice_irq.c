
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int head; } ;
struct imxdi_dev {int dsr; int work; TYPE_1__ write_wait; scalar_t__ ioaddr; } ;
typedef int irqreturn_t ;


 scalar_t__ DIER ;
 int DIER_CAIE ;
 int DIER_SVIE ;
 int DIER_WCIE ;
 scalar_t__ DSR ;
 int DSR_CAF ;
 int DSR_SVF ;
 int DSR_WCF ;
 int DSR_WEF ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int di_int_disable (struct imxdi_dev*,int) ;
 int di_report_tamper_info (struct imxdi_dev*,int) ;
 scalar_t__ list_empty_careful (int *) ;
 int readl (scalar_t__) ;
 int schedule_work (int *) ;
 int wake_up_interruptible (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t dryice_irq(int irq, void *dev_id)
{
 struct imxdi_dev *imxdi = dev_id;
 u32 dsr, dier;
 irqreturn_t rc = IRQ_NONE;

 dier = readl(imxdi->ioaddr + DIER);
 dsr = readl(imxdi->ioaddr + DSR);


 if (dier & DIER_SVIE) {
  if (dsr & DSR_SVF) {
   di_int_disable(imxdi, DIER_SVIE);

   di_report_tamper_info(imxdi, dsr);
   rc = IRQ_HANDLED;
  }
 }


 if (dier & DIER_WCIE) {



  if (list_empty_careful(&imxdi->write_wait.head))
   return rc;


  if (dsr & (DSR_WCF | DSR_WEF)) {

   di_int_disable(imxdi, DIER_WCIE);


   imxdi->dsr |= dsr;

   wake_up_interruptible(&imxdi->write_wait);
   rc = IRQ_HANDLED;
  }
 }


 if (dier & DIER_CAIE) {

  if (dsr & DSR_CAF) {

   di_int_disable(imxdi, DIER_CAIE);


   schedule_work(&imxdi->work);
   rc = IRQ_HANDLED;
  }
 }
 return rc;
}
