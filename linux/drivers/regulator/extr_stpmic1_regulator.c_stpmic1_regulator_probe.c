
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int *) ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*) ;
 int of_regulator_match (TYPE_1__*,int ,int *,int) ;
 int * stpmic1_matches ;
 int * stpmic1_regulator_cfgs ;
 int stpmic1_regulator_register (struct platform_device*,int,int *,int *) ;

__attribute__((used)) static int stpmic1_regulator_probe(struct platform_device *pdev)
{
 int i, ret;

 ret = of_regulator_match(&pdev->dev, pdev->dev.of_node, stpmic1_matches,
     ARRAY_SIZE(stpmic1_matches));
 if (ret < 0) {
  dev_err(&pdev->dev,
   "Error in PMIC regulator device tree node");
  return ret;
 }

 for (i = 0; i < ARRAY_SIZE(stpmic1_regulator_cfgs); i++) {
  ret = stpmic1_regulator_register(pdev, i, &stpmic1_matches[i],
       &stpmic1_regulator_cfgs[i]);
  if (ret < 0)
   return ret;
 }

 dev_dbg(&pdev->dev, "stpmic1_regulator driver probed\n");

 return 0;
}
