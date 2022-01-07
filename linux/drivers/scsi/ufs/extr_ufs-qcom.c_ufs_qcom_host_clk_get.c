
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOENT ;
 int EPROBE_DEFER ;
 int IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int dev_err (struct device*,char*,char const*,int) ;
 struct clk* devm_clk_get (struct device*,char const*) ;

__attribute__((used)) static int ufs_qcom_host_clk_get(struct device *dev,
  const char *name, struct clk **clk_out, bool optional)
{
 struct clk *clk;
 int err = 0;

 clk = devm_clk_get(dev, name);
 if (!IS_ERR(clk)) {
  *clk_out = clk;
  return 0;
 }

 err = PTR_ERR(clk);

 if (optional && err == -ENOENT) {
  *clk_out = ((void*)0);
  return 0;
 }

 if (err != -EPROBE_DEFER)
  dev_err(dev, "failed to get %s err %d\n", name, err);

 return err;
}
