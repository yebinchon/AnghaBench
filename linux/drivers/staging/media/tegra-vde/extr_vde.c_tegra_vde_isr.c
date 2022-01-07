
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_vde {int decode_completion; int frameid; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 scalar_t__ completion_done (int *) ;
 int tegra_vde_set_bits (struct tegra_vde*,int ,int ,int) ;

__attribute__((used)) static irqreturn_t tegra_vde_isr(int irq, void *data)
{
 struct tegra_vde *vde = data;

 if (completion_done(&vde->decode_completion))
  return IRQ_NONE;

 tegra_vde_set_bits(vde, 0, vde->frameid, 0x208);
 complete(&vde->decode_completion);

 return IRQ_HANDLED;
}
