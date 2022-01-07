
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_wcnss {int rproc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RPROC_WATCHDOG ;
 int rproc_report_crash (int ,int ) ;

__attribute__((used)) static irqreturn_t wcnss_wdog_interrupt(int irq, void *dev)
{
 struct qcom_wcnss *wcnss = dev;

 rproc_report_crash(wcnss->rproc, RPROC_WATCHDOG);

 return IRQ_HANDLED;
}
