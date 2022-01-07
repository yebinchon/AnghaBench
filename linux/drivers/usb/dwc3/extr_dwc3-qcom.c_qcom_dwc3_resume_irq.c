
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc3_qcom {scalar_t__ pm_suspended; int dwc3; } ;
struct dwc3 {TYPE_1__* xhci; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 struct dwc3* platform_get_drvdata (int ) ;
 int pm_runtime_resume (int *) ;

__attribute__((used)) static irqreturn_t qcom_dwc3_resume_irq(int irq, void *data)
{
 struct dwc3_qcom *qcom = data;
 struct dwc3 *dwc = platform_get_drvdata(qcom->dwc3);


 if (qcom->pm_suspended)
  return IRQ_HANDLED;

 if (dwc->xhci)
  pm_runtime_resume(&dwc->xhci->dev);

 return IRQ_HANDLED;
}
