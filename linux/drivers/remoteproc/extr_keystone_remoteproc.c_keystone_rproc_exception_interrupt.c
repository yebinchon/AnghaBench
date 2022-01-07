
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keystone_rproc {int rproc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RPROC_FATAL_ERROR ;
 int rproc_report_crash (int ,int ) ;

__attribute__((used)) static irqreturn_t keystone_rproc_exception_interrupt(int irq, void *dev_id)
{
 struct keystone_rproc *ksproc = dev_id;

 rproc_report_crash(ksproc->rproc, RPROC_FATAL_ERROR);

 return IRQ_HANDLED;
}
