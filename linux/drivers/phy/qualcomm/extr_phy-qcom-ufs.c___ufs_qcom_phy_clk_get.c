
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int dev_err (struct device*,char*,char const*,int) ;
 struct clk* devm_clk_get (struct device*,char const*) ;

__attribute__((used)) static int __ufs_qcom_phy_clk_get(struct device *dev,
    const char *name, struct clk **clk_out, bool err_print)
{
 struct clk *clk;
 int err = 0;

 clk = devm_clk_get(dev, name);
 if (IS_ERR(clk)) {
  err = PTR_ERR(clk);
  if (err_print)
   dev_err(dev, "failed to get %s err %d", name, err);
 } else {
  *clk_out = clk;
 }

 return err;
}
