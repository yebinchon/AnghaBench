
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct cpcap_battery_ddata {int reg; int active; } ;


 int CPCAP_REG_BPEOL ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*,int) ;
 struct cpcap_battery_ddata* platform_get_drvdata (struct platform_device*) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static int cpcap_battery_remove(struct platform_device *pdev)
{
 struct cpcap_battery_ddata *ddata = platform_get_drvdata(pdev);
 int error;

 atomic_set(&ddata->active, 0);
 error = regmap_update_bits(ddata->reg, CPCAP_REG_BPEOL,
       0xffff, 0);
 if (error)
  dev_err(&pdev->dev, "could not disable: %i\n", error);

 return 0;
}
