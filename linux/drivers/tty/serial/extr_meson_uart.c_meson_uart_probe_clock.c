
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 struct clk* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct clk*) ;
 scalar_t__ clk_disable_unprepare ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (struct device*,char*) ;
 int devm_add_action_or_reset (struct device*,void (*) (void*),struct clk*) ;
 struct clk* devm_clk_get (struct device*,char const*) ;

__attribute__((used)) static inline struct clk *meson_uart_probe_clock(struct device *dev,
       const char *id)
{
 struct clk *clk = ((void*)0);
 int ret;

 clk = devm_clk_get(dev, id);
 if (IS_ERR(clk))
  return clk;

 ret = clk_prepare_enable(clk);
 if (ret) {
  dev_err(dev, "couldn't enable clk\n");
  return ERR_PTR(ret);
 }

 devm_add_action_or_reset(dev,
   (void(*)(void *))clk_disable_unprepare,
   clk);

 return clk;
}
