
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_q6v5 {int handover_issued; int (* handover ) (struct qcom_q6v5*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int stub1 (struct qcom_q6v5*) ;

__attribute__((used)) static irqreturn_t q6v5_handover_interrupt(int irq, void *data)
{
 struct qcom_q6v5 *q6v5 = data;

 if (q6v5->handover)
  q6v5->handover(q6v5);

 q6v5->handover_issued = 1;

 return IRQ_HANDLED;
}
