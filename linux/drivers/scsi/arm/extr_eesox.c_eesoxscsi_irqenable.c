
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expansion_card {scalar_t__ irq_data; } ;
struct eesoxscsi_info {int ctl_port; int control; } ;


 int EESOX_INTR_ENABLE ;
 int writeb (int ,int ) ;

__attribute__((used)) static void
eesoxscsi_irqenable(struct expansion_card *ec, int irqnr)
{
 struct eesoxscsi_info *info = (struct eesoxscsi_info *)ec->irq_data;

 info->control |= EESOX_INTR_ENABLE;

 writeb(info->control, info->ctl_port);
}
