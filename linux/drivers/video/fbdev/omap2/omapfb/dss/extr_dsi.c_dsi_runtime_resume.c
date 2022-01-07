
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_data {int is_enabled; } ;
struct device {int dummy; } ;


 int dispc_runtime_get () ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int smp_wmb () ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int dsi_runtime_resume(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct dsi_data *dsi = dsi_get_dsidrv_data(pdev);
 int r;

 r = dispc_runtime_get();
 if (r)
  return r;

 dsi->is_enabled = 1;

 smp_wmb();

 return 0;
}
