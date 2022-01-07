
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int do_msm_poweroff ;
 int msm_ps_hold ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_power_off ;
 int register_restart_handler (int *) ;
 int restart_nb ;

__attribute__((used)) static int msm_restart_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *mem;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 msm_ps_hold = devm_ioremap_resource(dev, mem);
 if (IS_ERR(msm_ps_hold))
  return PTR_ERR(msm_ps_hold);

 register_restart_handler(&restart_nb);

 pm_power_off = do_msm_poweroff;

 return 0;
}
