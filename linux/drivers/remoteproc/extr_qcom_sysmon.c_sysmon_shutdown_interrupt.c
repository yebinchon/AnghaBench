
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_sysmon {int shutdown_comp; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t sysmon_shutdown_interrupt(int irq, void *data)
{
 struct qcom_sysmon *sysmon = data;

 complete(&sysmon->shutdown_comp);

 return IRQ_HANDLED;
}
