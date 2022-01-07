
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RPROC_WATCHDOG ;
 int rproc_report_crash (struct rproc*,int ) ;

__attribute__((used)) static irqreturn_t stm32_rproc_wdg(int irq, void *data)
{
 struct rproc *rproc = data;

 rproc_report_crash(rproc, RPROC_WATCHDOG);

 return IRQ_HANDLED;
}
