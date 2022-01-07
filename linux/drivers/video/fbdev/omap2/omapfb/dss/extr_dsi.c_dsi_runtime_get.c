
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct dsi_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DSSDBG (char*) ;
 int WARN_ON (int) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static int dsi_runtime_get(struct platform_device *dsidev)
{
 int r;
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 DSSDBG("dsi_runtime_get\n");

 r = pm_runtime_get_sync(&dsi->pdev->dev);
 WARN_ON(r < 0);
 return r < 0 ? r : 0;
}
