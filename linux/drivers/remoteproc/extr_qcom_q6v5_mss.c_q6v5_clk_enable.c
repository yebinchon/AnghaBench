
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int clk_disable_unprepare (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int q6v5_clk_enable(struct device *dev,
      struct clk **clks, int count)
{
 int rc;
 int i;

 for (i = 0; i < count; i++) {
  rc = clk_prepare_enable(clks[i]);
  if (rc) {
   dev_err(dev, "Clock enable failed\n");
   goto err;
  }
 }

 return 0;
err:
 for (i--; i >= 0; i--)
  clk_disable_unprepare(clks[i]);

 return rc;
}
