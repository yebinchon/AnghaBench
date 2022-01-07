
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_q6v5 {int start_done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t q6v5_ready_interrupt(int irq, void *data)
{
 struct qcom_q6v5 *q6v5 = data;

 complete(&q6v5->start_done);

 return IRQ_HANDLED;
}
