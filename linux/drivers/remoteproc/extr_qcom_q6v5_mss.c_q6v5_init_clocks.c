
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int dev_err (struct device*,char*,char*) ;
 struct clk* devm_clk_get (struct device*,char*) ;

__attribute__((used)) static int q6v5_init_clocks(struct device *dev, struct clk **clks,
  char **clk_names)
{
 int i;

 if (!clk_names)
  return 0;

 for (i = 0; clk_names[i]; i++) {
  clks[i] = devm_clk_get(dev, clk_names[i]);
  if (IS_ERR(clks[i])) {
   int rc = PTR_ERR(clks[i]);

   if (rc != -EPROBE_DEFER)
    dev_err(dev, "Failed to get %s clock\n",
     clk_names[i]);
   return rc;
  }
 }

 return i;
}
