
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct resource {int dummy; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {int notifier_call; } ;
struct TYPE_10__ {scalar_t__* clks; int clk_num; } ;
struct clk_wzrd {scalar_t__ base; int speed_grade; scalar_t__ clk_in1; scalar_t__ axi_clk; scalar_t__* clks_internal; scalar_t__* clkout; TYPE_9__ nb; TYPE_1__ clk_data; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 scalar_t__ ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 unsigned long WZRD_ACLK_MAX_FREQ ;
 int WZRD_CLKFBOUT_FRAC_EN ;
 int WZRD_CLKFBOUT_MULT_MASK ;
 int WZRD_CLKFBOUT_MULT_SHIFT ;
 int WZRD_CLKOUT0_FRAC_EN ;
 int WZRD_CLKOUT_DIVIDE_MASK ;
 int WZRD_CLKOUT_DIVIDE_SHIFT ;
 scalar_t__ WZRD_CLK_CFG_REG (int) ;
 int WZRD_DIVCLK_DIVIDE_MASK ;
 int WZRD_DIVCLK_DIVIDE_SHIFT ;
 int WZRD_NUM_OUTPUTS ;
 char const* __clk_get_name (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 unsigned long clk_get_rate (scalar_t__) ;
 int clk_notifier_register (scalar_t__,TYPE_9__*) ;
 int clk_prepare_enable (scalar_t__) ;
 void* clk_register_fixed_factor (TYPE_2__*,char const*,char const*,int ,int,int) ;
 int clk_unregister (scalar_t__) ;
 int clk_wzrd_clk_notifier ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_name (TYPE_2__*) ;
 int dev_warn (TYPE_2__*,char*,...) ;
 void* devm_clk_get (TYPE_2__*,char*) ;
 scalar_t__ devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct clk_wzrd* devm_kzalloc (TYPE_2__*,int,int ) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char const*) ;
 int of_clk_add_provider (struct device_node*,int ,TYPE_1__*) ;
 int of_clk_src_onecell_get ;
 scalar_t__ of_property_read_string_index (struct device_node*,char*,int,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct clk_wzrd*) ;
 int readl (scalar_t__) ;
 size_t wzrd_clk_mul ;
 size_t wzrd_clk_mul_div ;

__attribute__((used)) static int clk_wzrd_probe(struct platform_device *pdev)
{
 int i, ret;
 u32 reg;
 unsigned long rate;
 const char *clk_name;
 struct clk_wzrd *clk_wzrd;
 struct resource *mem;
 struct device_node *np = pdev->dev.of_node;

 clk_wzrd = devm_kzalloc(&pdev->dev, sizeof(*clk_wzrd), GFP_KERNEL);
 if (!clk_wzrd)
  return -ENOMEM;
 platform_set_drvdata(pdev, clk_wzrd);

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 clk_wzrd->base = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(clk_wzrd->base))
  return PTR_ERR(clk_wzrd->base);

 ret = of_property_read_u32(np, "speed-grade", &clk_wzrd->speed_grade);
 if (!ret) {
  if (clk_wzrd->speed_grade < 1 || clk_wzrd->speed_grade > 3) {
   dev_warn(&pdev->dev, "invalid speed grade '%d'\n",
     clk_wzrd->speed_grade);
   clk_wzrd->speed_grade = 0;
  }
 }

 clk_wzrd->clk_in1 = devm_clk_get(&pdev->dev, "clk_in1");
 if (IS_ERR(clk_wzrd->clk_in1)) {
  if (clk_wzrd->clk_in1 != ERR_PTR(-EPROBE_DEFER))
   dev_err(&pdev->dev, "clk_in1 not found\n");
  return PTR_ERR(clk_wzrd->clk_in1);
 }

 clk_wzrd->axi_clk = devm_clk_get(&pdev->dev, "s_axi_aclk");
 if (IS_ERR(clk_wzrd->axi_clk)) {
  if (clk_wzrd->axi_clk != ERR_PTR(-EPROBE_DEFER))
   dev_err(&pdev->dev, "s_axi_aclk not found\n");
  return PTR_ERR(clk_wzrd->axi_clk);
 }
 ret = clk_prepare_enable(clk_wzrd->axi_clk);
 if (ret) {
  dev_err(&pdev->dev, "enabling s_axi_aclk failed\n");
  return ret;
 }
 rate = clk_get_rate(clk_wzrd->axi_clk);
 if (rate > WZRD_ACLK_MAX_FREQ) {
  dev_err(&pdev->dev, "s_axi_aclk frequency (%lu) too high\n",
   rate);
  ret = -EINVAL;
  goto err_disable_clk;
 }


 reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
      WZRD_CLKFBOUT_FRAC_EN;
 reg |= readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2)) &
       WZRD_CLKOUT0_FRAC_EN;
 if (reg)
  dev_warn(&pdev->dev, "fractional div/mul not supported\n");


 reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
       WZRD_CLKFBOUT_MULT_MASK) >> WZRD_CLKFBOUT_MULT_SHIFT;
 clk_name = kasprintf(GFP_KERNEL, "%s_mul", dev_name(&pdev->dev));
 if (!clk_name) {
  ret = -ENOMEM;
  goto err_disable_clk;
 }
 clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor
   (&pdev->dev, clk_name,
    __clk_get_name(clk_wzrd->clk_in1),
    0, reg, 1);
 kfree(clk_name);
 if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
  dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
  ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
  goto err_disable_clk;
 }


 reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
   WZRD_DIVCLK_DIVIDE_MASK) >> WZRD_DIVCLK_DIVIDE_SHIFT;
 clk_name = kasprintf(GFP_KERNEL, "%s_mul_div", dev_name(&pdev->dev));
 if (!clk_name) {
  ret = -ENOMEM;
  goto err_rm_int_clk;
 }

 clk_wzrd->clks_internal[wzrd_clk_mul_div] = clk_register_fixed_factor
   (&pdev->dev, clk_name,
    __clk_get_name(clk_wzrd->clks_internal[wzrd_clk_mul]),
    0, 1, reg);
 if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div])) {
  dev_err(&pdev->dev, "unable to register divider clock\n");
  ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div]);
  goto err_rm_int_clk;
 }


 for (i = WZRD_NUM_OUTPUTS - 1; i >= 0 ; i--) {
  const char *clkout_name;

  if (of_property_read_string_index(np, "clock-output-names", i,
        &clkout_name)) {
   dev_err(&pdev->dev,
    "clock output name not specified\n");
   ret = -EINVAL;
   goto err_rm_int_clks;
  }
  reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2) + i * 12);
  reg &= WZRD_CLKOUT_DIVIDE_MASK;
  reg >>= WZRD_CLKOUT_DIVIDE_SHIFT;
  clk_wzrd->clkout[i] = clk_register_fixed_factor
   (&pdev->dev, clkout_name, clk_name, 0, 1, reg);
  if (IS_ERR(clk_wzrd->clkout[i])) {
   int j;

   for (j = i + 1; j < WZRD_NUM_OUTPUTS; j++)
    clk_unregister(clk_wzrd->clkout[j]);
   dev_err(&pdev->dev,
    "unable to register divider clock\n");
   ret = PTR_ERR(clk_wzrd->clkout[i]);
   goto err_rm_int_clks;
  }
 }

 kfree(clk_name);

 clk_wzrd->clk_data.clks = clk_wzrd->clkout;
 clk_wzrd->clk_data.clk_num = ARRAY_SIZE(clk_wzrd->clkout);
 of_clk_add_provider(np, of_clk_src_onecell_get, &clk_wzrd->clk_data);

 if (clk_wzrd->speed_grade) {
  clk_wzrd->nb.notifier_call = clk_wzrd_clk_notifier;

  ret = clk_notifier_register(clk_wzrd->clk_in1,
         &clk_wzrd->nb);
  if (ret)
   dev_warn(&pdev->dev,
     "unable to register clock notifier\n");

  ret = clk_notifier_register(clk_wzrd->axi_clk, &clk_wzrd->nb);
  if (ret)
   dev_warn(&pdev->dev,
     "unable to register clock notifier\n");
 }

 return 0;

err_rm_int_clks:
 clk_unregister(clk_wzrd->clks_internal[1]);
err_rm_int_clk:
 kfree(clk_name);
 clk_unregister(clk_wzrd->clks_internal[0]);
err_disable_clk:
 clk_disable_unprepare(clk_wzrd->axi_clk);

 return ret;
}
