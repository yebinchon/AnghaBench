
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_queue_inst {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int knav_queue_notify (struct knav_queue_inst*) ;

__attribute__((used)) static irqreturn_t knav_queue_int_handler(int irq, void *_instdata)
{
 struct knav_queue_inst *inst = _instdata;

 knav_queue_notify(inst);
 return IRQ_HANDLED;
}
