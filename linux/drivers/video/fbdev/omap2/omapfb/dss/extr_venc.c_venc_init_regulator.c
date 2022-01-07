
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regulator {int dummy; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;
struct TYPE_5__ {struct regulator* vdda_dac_reg; TYPE_1__* pdev; } ;
struct TYPE_4__ {TYPE_3__ dev; } ;


 int DSSERR (char*) ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct regulator*) ;
 int PTR_ERR (struct regulator*) ;
 struct regulator* devm_regulator_get (TYPE_3__*,char*) ;
 TYPE_2__ venc ;

__attribute__((used)) static int venc_init_regulator(void)
{
 struct regulator *vdda_dac;

 if (venc.vdda_dac_reg != ((void*)0))
  return 0;

 if (venc.pdev->dev.of_node)
  vdda_dac = devm_regulator_get(&venc.pdev->dev, "vdda");
 else
  vdda_dac = devm_regulator_get(&venc.pdev->dev, "vdda_dac");

 if (IS_ERR(vdda_dac)) {
  if (PTR_ERR(vdda_dac) != -EPROBE_DEFER)
   DSSERR("can't get VDDA_DAC regulator\n");
  return PTR_ERR(vdda_dac);
 }

 venc.vdda_dac_reg = vdda_dac;

 return 0;
}
