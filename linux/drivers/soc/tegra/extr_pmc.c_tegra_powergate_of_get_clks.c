
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_powergate {unsigned int num_clks; int * clks; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
typedef int clk ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_put (int ) ;
 int * kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 int of_clk_get (struct device_node*,unsigned int) ;
 unsigned int of_clk_get_parent_count (struct device_node*) ;

__attribute__((used)) static int tegra_powergate_of_get_clks(struct tegra_powergate *pg,
           struct device_node *np)
{
 struct clk *clk;
 unsigned int i, count;
 int err;

 count = of_clk_get_parent_count(np);
 if (count == 0)
  return -ENODEV;

 pg->clks = kcalloc(count, sizeof(clk), GFP_KERNEL);
 if (!pg->clks)
  return -ENOMEM;

 for (i = 0; i < count; i++) {
  pg->clks[i] = of_clk_get(np, i);
  if (IS_ERR(pg->clks[i])) {
   err = PTR_ERR(pg->clks[i]);
   goto err;
  }
 }

 pg->num_clks = count;

 return 0;

err:
 while (i--)
  clk_put(pg->clks[i]);

 kfree(pg->clks);

 return err;
}
