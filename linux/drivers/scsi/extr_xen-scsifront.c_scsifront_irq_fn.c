
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsifrnt_info {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cond_resched () ;
 scalar_t__ scsifront_cmd_done (struct vscsifrnt_info*) ;

__attribute__((used)) static irqreturn_t scsifront_irq_fn(int irq, void *dev_id)
{
 struct vscsifrnt_info *info = dev_id;

 while (scsifront_cmd_done(info))

  cond_resched();

 return IRQ_HANDLED;
}
