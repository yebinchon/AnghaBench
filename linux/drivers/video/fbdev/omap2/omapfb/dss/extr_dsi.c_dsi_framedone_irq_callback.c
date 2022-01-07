
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_data {int framedone_timeout_work; } ;


 int cancel_delayed_work (int *) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_handle_framedone (struct platform_device*,int ) ;

__attribute__((used)) static void dsi_framedone_irq_callback(void *data)
{
 struct platform_device *dsidev = (struct platform_device *) data;
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);






 cancel_delayed_work(&dsi->framedone_timeout_work);

 dsi_handle_framedone(dsidev, 0);
}
