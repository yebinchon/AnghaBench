
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_qcom {int num_clocks; struct clk** clks; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int clk_put (struct clk*) ;
 struct clk** devm_kcalloc (struct device*,int,int,int ) ;
 struct clk* of_clk_get (struct device_node*,int) ;

__attribute__((used)) static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
{
 struct device *dev = qcom->dev;
 struct device_node *np = dev->of_node;
 int i;

 if (!np || !count)
  return 0;

 if (count < 0)
  return count;

 qcom->num_clocks = count;

 qcom->clks = devm_kcalloc(dev, qcom->num_clocks,
      sizeof(struct clk *), GFP_KERNEL);
 if (!qcom->clks)
  return -ENOMEM;

 for (i = 0; i < qcom->num_clocks; i++) {
  struct clk *clk;
  int ret;

  clk = of_clk_get(np, i);
  if (IS_ERR(clk)) {
   while (--i >= 0)
    clk_put(qcom->clks[i]);
   return PTR_ERR(clk);
  }

  ret = clk_prepare_enable(clk);
  if (ret < 0) {
   while (--i >= 0) {
    clk_disable_unprepare(qcom->clks[i]);
    clk_put(qcom->clks[i]);
   }
   clk_put(clk);

   return ret;
  }

  qcom->clks[i] = clk;
 }

 return 0;
}
