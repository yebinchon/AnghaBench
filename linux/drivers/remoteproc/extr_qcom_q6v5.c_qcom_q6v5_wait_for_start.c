
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_q6v5 {int handover_irq; int start_done; } ;


 int ETIMEDOUT ;
 int disable_irq (int ) ;
 int wait_for_completion_timeout (int *,int) ;

int qcom_q6v5_wait_for_start(struct qcom_q6v5 *q6v5, int timeout)
{
 int ret;

 ret = wait_for_completion_timeout(&q6v5->start_done, timeout);
 if (!ret)
  disable_irq(q6v5->handover_irq);

 return !ret ? -ETIMEDOUT : 0;
}
