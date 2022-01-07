
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_wcnss {int stop_done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t wcnss_stop_ack_interrupt(int irq, void *dev)
{
 struct qcom_wcnss *wcnss = dev;

 complete(&wcnss->stop_done);

 return IRQ_HANDLED;
}
