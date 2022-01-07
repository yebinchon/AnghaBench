
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_q6v5 {int handover_issued; int handover_irq; } ;


 int disable_irq (int ) ;

int qcom_q6v5_unprepare(struct qcom_q6v5 *q6v5)
{
 disable_irq(q6v5->handover_irq);

 return !q6v5->handover_issued;
}
