
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_adsp {void* px_supply; int dev; void* cx_supply; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int PTR_ERR_OR_ZERO (void*) ;
 void* devm_regulator_get (int ,char*) ;
 int regulator_set_load (void*,int) ;

__attribute__((used)) static int adsp_init_regulator(struct qcom_adsp *adsp)
{
 adsp->cx_supply = devm_regulator_get(adsp->dev, "cx");
 if (IS_ERR(adsp->cx_supply))
  return PTR_ERR(adsp->cx_supply);

 regulator_set_load(adsp->cx_supply, 100000);

 adsp->px_supply = devm_regulator_get(adsp->dev, "px");
 return PTR_ERR_OR_ZERO(adsp->px_supply);
}
