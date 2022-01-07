
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator {int dummy; } ;
struct platform_device {int dummy; } ;
struct dsi_data {struct regulator* vdds_dsi_reg; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DSSERR (char*) ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct regulator*) ;
 int PTR_ERR (struct regulator*) ;
 struct regulator* devm_regulator_get (int *,char*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;

__attribute__((used)) static int dsi_regulator_init(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 struct regulator *vdds_dsi;

 if (dsi->vdds_dsi_reg != ((void*)0))
  return 0;

 vdds_dsi = devm_regulator_get(&dsi->pdev->dev, "vdd");

 if (IS_ERR(vdds_dsi)) {
  if (PTR_ERR(vdds_dsi) != -EPROBE_DEFER)
   DSSERR("can't get DSI VDD regulator\n");
  return PTR_ERR(vdds_dsi);
 }

 dsi->vdds_dsi_reg = vdds_dsi;

 return 0;
}
