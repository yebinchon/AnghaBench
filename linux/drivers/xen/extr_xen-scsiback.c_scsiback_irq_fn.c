
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsibk_info {scalar_t__ ring_error; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cond_resched () ;
 scalar_t__ scsiback_do_cmd_fn (struct vscsibk_info*) ;

__attribute__((used)) static irqreturn_t scsiback_irq_fn(int irq, void *dev_id)
{
 struct vscsibk_info *info = dev_id;

 if (info->ring_error)
  return IRQ_HANDLED;

 while (scsiback_do_cmd_fn(info))
  cond_resched();

 return IRQ_HANDLED;
}
