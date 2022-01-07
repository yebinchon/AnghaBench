
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator {int dummy; } ;
struct TYPE_4__ {struct regulator* vdda_reg; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DSSERR (char*) ;
 scalar_t__ IS_ERR (struct regulator*) ;
 int PTR_ERR (struct regulator*) ;
 struct regulator* devm_regulator_get (int *,char*) ;
 TYPE_2__ hdmi ;

__attribute__((used)) static int hdmi_init_regulator(void)
{
 struct regulator *reg;

 if (hdmi.vdda_reg != ((void*)0))
  return 0;

 reg = devm_regulator_get(&hdmi.pdev->dev, "vdda");
 if (IS_ERR(reg)) {
  DSSERR("can't get VDDA regulator\n");
  return PTR_ERR(reg);
 }

 hdmi.vdda_reg = reg;

 return 0;
}
