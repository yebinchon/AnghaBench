
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct dsi_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DSSDBG (char*) ;
 int ENOSYS ;
 int WARN_ON (int) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static void dsi_runtime_put(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 int r;

 DSSDBG("dsi_runtime_put\n");

 r = pm_runtime_put_sync(&dsi->pdev->dev);
 WARN_ON(r < 0 && r != -ENOSYS);
}
