
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int reset_names_count; int clk_names_count; int (* get_power ) (struct meson_ee_pwrc_domain*) ;int name; } ;
struct TYPE_4__ {int power_off; int power_on; int name; } ;
struct meson_ee_pwrc_domain {int num_rstc; int num_clks; TYPE_1__ desc; TYPE_2__ base; int clks; int rstc; struct meson_ee_pwrc* pwrc; } ;
struct meson_ee_pwrc {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_bulk_prepare_enable (int,int ) ;
 int dev_warn (int *,char*,int,int ) ;
 int devm_clk_bulk_get_all (int *,int *) ;
 int devm_reset_control_array_get (int *,int,int) ;
 int meson_ee_pwrc_off ;
 int meson_ee_pwrc_on ;
 int pm_domain_always_on_gov ;
 int pm_genpd_init (TYPE_2__*,int *,int) ;
 int reset_control_get_count (int *) ;
 int stub1 (struct meson_ee_pwrc_domain*) ;
 int stub2 (struct meson_ee_pwrc_domain*) ;

__attribute__((used)) static int meson_ee_pwrc_init_domain(struct platform_device *pdev,
         struct meson_ee_pwrc *pwrc,
         struct meson_ee_pwrc_domain *dom)
{
 dom->pwrc = pwrc;
 dom->num_rstc = dom->desc.reset_names_count;
 dom->num_clks = dom->desc.clk_names_count;

 if (dom->num_rstc) {
  int count = reset_control_get_count(&pdev->dev);

  if (count != dom->num_rstc)
   dev_warn(&pdev->dev, "Invalid resets count %d for domain %s\n",
     count, dom->desc.name);

  dom->rstc = devm_reset_control_array_get(&pdev->dev, 0,
        0);
  if (IS_ERR(dom->rstc))
   return PTR_ERR(dom->rstc);
 }

 if (dom->num_clks) {
  int ret = devm_clk_bulk_get_all(&pdev->dev, &dom->clks);
  if (ret < 0)
   return ret;

  if (dom->num_clks != ret) {
   dev_warn(&pdev->dev, "Invalid clocks count %d for domain %s\n",
     ret, dom->desc.name);
   dom->num_clks = ret;
  }
 }

 dom->base.name = dom->desc.name;
 dom->base.power_on = meson_ee_pwrc_on;
 dom->base.power_off = meson_ee_pwrc_off;
 if (dom->num_clks && dom->desc.get_power && !dom->desc.get_power(dom)) {
  int ret = clk_bulk_prepare_enable(dom->num_clks, dom->clks);
  if (ret)
   return ret;

  pm_genpd_init(&dom->base, &pm_domain_always_on_gov, 0);
 } else
  pm_genpd_init(&dom->base, ((void*)0),
         (dom->desc.get_power ?
          dom->desc.get_power(dom) : 1));

 return 0;
}
