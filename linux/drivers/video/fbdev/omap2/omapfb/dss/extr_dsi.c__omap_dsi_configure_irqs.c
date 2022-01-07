
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct dsi_reg {int dummy; } ;
struct dsi_isr_data {int mask; int * isr; } ;


 int dsi_read_reg (struct platform_device*,struct dsi_reg const) ;
 int dsi_write_reg (struct platform_device*,struct dsi_reg const,int) ;

__attribute__((used)) static void _omap_dsi_configure_irqs(struct platform_device *dsidev,
  struct dsi_isr_data *isr_array,
  unsigned isr_array_size, u32 default_mask,
  const struct dsi_reg enable_reg,
  const struct dsi_reg status_reg)
{
 struct dsi_isr_data *isr_data;
 u32 mask;
 u32 old_mask;
 int i;

 mask = default_mask;

 for (i = 0; i < isr_array_size; i++) {
  isr_data = &isr_array[i];

  if (isr_data->isr == ((void*)0))
   continue;

  mask |= isr_data->mask;
 }

 old_mask = dsi_read_reg(dsidev, enable_reg);

 dsi_write_reg(dsidev, status_reg, (mask ^ old_mask) & mask);
 dsi_write_reg(dsidev, enable_reg, mask);


 dsi_read_reg(dsidev, enable_reg);
 dsi_read_reg(dsidev, status_reg);
}
