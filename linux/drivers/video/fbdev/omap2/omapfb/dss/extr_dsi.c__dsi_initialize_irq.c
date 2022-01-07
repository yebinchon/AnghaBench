
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_data {int irq_lock; int isr_tables; } ;


 int _omap_dsi_set_irqs (struct platform_device*) ;
 int _omap_dsi_set_irqs_cio (struct platform_device*) ;
 int _omap_dsi_set_irqs_vc (struct platform_device*,int) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int memset (int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void _dsi_initialize_irq(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 unsigned long flags;
 int vc;

 spin_lock_irqsave(&dsi->irq_lock, flags);

 memset(&dsi->isr_tables, 0, sizeof(dsi->isr_tables));

 _omap_dsi_set_irqs(dsidev);
 for (vc = 0; vc < 4; ++vc)
  _omap_dsi_set_irqs_vc(dsidev, vc);
 _omap_dsi_set_irqs_cio(dsidev);

 spin_unlock_irqrestore(&dsi->irq_lock, flags);
}
