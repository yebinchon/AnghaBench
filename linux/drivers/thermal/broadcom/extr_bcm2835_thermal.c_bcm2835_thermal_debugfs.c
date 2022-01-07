
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct debugfs_regset32 {int base; int nregs; int regs; } ;
struct bcm2835_thermal_data {int debugfsdir; int regs; } ;


 int ARRAY_SIZE (int ) ;
 int GFP_KERNEL ;
 int bcm2835_thermal_regs ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_regset32 (char*,int,int ,struct debugfs_regset32*) ;
 struct debugfs_regset32* devm_kzalloc (int *,int,int ) ;
 struct bcm2835_thermal_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void bcm2835_thermal_debugfs(struct platform_device *pdev)
{
 struct bcm2835_thermal_data *data = platform_get_drvdata(pdev);
 struct debugfs_regset32 *regset;

 data->debugfsdir = debugfs_create_dir("bcm2835_thermal", ((void*)0));

 regset = devm_kzalloc(&pdev->dev, sizeof(*regset), GFP_KERNEL);
 if (!regset)
  return;

 regset->regs = bcm2835_thermal_regs;
 regset->nregs = ARRAY_SIZE(bcm2835_thermal_regs);
 regset->base = data->regs;

 debugfs_create_regset32("regset", 0444, data->debugfsdir, regset);
}
