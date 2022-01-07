
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_q6v5 {int running; int handover_issued; int handover_irq; int stop_done; int start_done; } ;


 int enable_irq (int ) ;
 int reinit_completion (int *) ;

int qcom_q6v5_prepare(struct qcom_q6v5 *q6v5)
{
 reinit_completion(&q6v5->start_done);
 reinit_completion(&q6v5->stop_done);

 q6v5->running = 1;
 q6v5->handover_issued = 0;

 enable_irq(q6v5->handover_irq);

 return 0;
}
