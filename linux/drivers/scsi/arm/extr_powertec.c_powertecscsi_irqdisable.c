
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powertec_info {scalar_t__ base; } ;
struct expansion_card {struct powertec_info* irq_data; } ;


 scalar_t__ POWERTEC_INTR_CONTROL ;
 int POWERTEC_INTR_DISABLE ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void
powertecscsi_irqdisable(struct expansion_card *ec, int irqnr)
{
 struct powertec_info *info = ec->irq_data;
 writeb(POWERTEC_INTR_DISABLE, info->base + POWERTEC_INTR_CONTROL);
}
