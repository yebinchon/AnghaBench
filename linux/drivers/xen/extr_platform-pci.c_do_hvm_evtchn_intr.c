
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int xen_hvm_evtchn_do_upcall () ;

__attribute__((used)) static irqreturn_t do_hvm_evtchn_intr(int irq, void *dev_id)
{
 xen_hvm_evtchn_do_upcall();
 return IRQ_HANDLED;
}
