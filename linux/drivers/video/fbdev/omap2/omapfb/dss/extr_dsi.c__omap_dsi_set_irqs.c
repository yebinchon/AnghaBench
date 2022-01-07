
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int isr_table; } ;
struct dsi_data {TYPE_1__ isr_tables; } ;


 int ARRAY_SIZE (int ) ;
 int DSI_IRQENABLE ;
 int DSI_IRQSTATUS ;
 int DSI_IRQ_ERROR_MASK ;
 int DSI_IRQ_TE_TRIGGER ;
 int _omap_dsi_configure_irqs (struct platform_device*,int ,int ,int ,int ,int ) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;

__attribute__((used)) static void _omap_dsi_set_irqs(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 u32 mask = DSI_IRQ_ERROR_MASK;



 _omap_dsi_configure_irqs(dsidev, dsi->isr_tables.isr_table,
   ARRAY_SIZE(dsi->isr_tables.isr_table), mask,
   DSI_IRQENABLE, DSI_IRQSTATUS);
}
