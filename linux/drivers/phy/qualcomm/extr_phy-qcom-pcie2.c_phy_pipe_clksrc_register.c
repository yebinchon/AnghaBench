
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qcom_phy {TYPE_1__* dev; } ;
struct device_node {int name; } ;
struct clk_init_data {int * ops; int name; } ;
struct TYPE_6__ {struct clk_init_data* init; } ;
struct clk_fixed_rate {int fixed_rate; TYPE_3__ hw; } ;
struct TYPE_5__ {struct device_node* of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int clk_fixed_rate_ops ;
 int dev_err (TYPE_1__*,char*,int ) ;
 int devm_clk_hw_register (TYPE_1__*,TYPE_3__*) ;
 struct clk_fixed_rate* devm_kzalloc (TYPE_1__*,int,int ) ;
 int of_property_read_string (struct device_node*,char*,int *) ;

__attribute__((used)) static int phy_pipe_clksrc_register(struct qcom_phy *qphy)
{
 struct device_node *np = qphy->dev->of_node;
 struct clk_fixed_rate *fixed;
 struct clk_init_data init = { };
 int ret;

 ret = of_property_read_string(np, "clock-output-names", &init.name);
 if (ret) {
  dev_err(qphy->dev, "%s: No clock-output-names\n", np->name);
  return ret;
 }

 fixed = devm_kzalloc(qphy->dev, sizeof(*fixed), GFP_KERNEL);
 if (!fixed)
  return -ENOMEM;

 init.ops = &clk_fixed_rate_ops;


 fixed->fixed_rate = 250000000;
 fixed->hw.init = &init;

 return devm_clk_hw_register(qphy->dev, &fixed->hw);
}
