
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iris {int vregs; int num_vregs; int dev; int xo_clk; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;

int qcom_iris_enable(struct qcom_iris *iris)
{
 int ret;

 ret = regulator_bulk_enable(iris->num_vregs, iris->vregs);
 if (ret)
  return ret;

 ret = clk_prepare_enable(iris->xo_clk);
 if (ret) {
  dev_err(iris->dev, "failed to enable xo clk\n");
  goto disable_regulators;
 }

 return 0;

disable_regulators:
 regulator_bulk_disable(iris->num_vregs, iris->vregs);

 return ret;
}
