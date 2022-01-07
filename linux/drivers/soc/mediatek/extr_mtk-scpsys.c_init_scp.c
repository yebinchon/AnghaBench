
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scp_domain_data {size_t* clk_id; int name; } ;
struct generic_pm_domain {int flags; int power_on; int power_off; int name; } ;
struct scp_domain {struct clk** clk; struct scp_domain_data const* data; struct scp* scp; struct generic_pm_domain genpd; struct clk* supply; } ;
struct scp_ctrl_reg {int pwr_sta2nd_offs; int pwr_sta_offs; } ;
struct genpd_onecell_data {int num_domains; struct generic_pm_domain** domains; } ;
struct TYPE_7__ {int pwr_sta2nd_offs; int pwr_sta_offs; } ;
struct scp {int bus_prot_reg_update; struct scp_domain* domains; struct clk* infracfg; struct genpd_onecell_data pd_data; struct clk* base; TYPE_2__* dev; TYPE_1__ ctrl_reg; } ;
struct resource {int dummy; } ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct clk {int dummy; } ;


 int CLK_MAX ;
 int ENODEV ;
 int ENOMEM ;
 struct scp* ERR_CAST (struct clk*) ;
 struct scp* ERR_PTR (int ) ;
 int GENPD_FLAG_ACTIVE_WAKEUP ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int MAX_CLKS ;
 int MTK_SCPD_ACTIVE_WAKEUP ;
 scalar_t__ MTK_SCPD_CAPS (struct scp_domain*,int ) ;
 int PTR_ERR (struct clk*) ;
 int dev_err (TYPE_2__*,char*,int ) ;
 struct clk* devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 void* devm_kcalloc (TYPE_2__*,int,int,int ) ;
 struct scp* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct clk* devm_regulator_get_optional (TYPE_2__*,int ) ;
 int init_clks (struct platform_device*,struct clk**) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int scpsys_power_off ;
 int scpsys_power_on ;
 struct clk* syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static struct scp *init_scp(struct platform_device *pdev,
   const struct scp_domain_data *scp_domain_data, int num,
   const struct scp_ctrl_reg *scp_ctrl_reg,
   bool bus_prot_reg_update)
{
 struct genpd_onecell_data *pd_data;
 struct resource *res;
 int i, j;
 struct scp *scp;
 struct clk *clk[CLK_MAX];

 scp = devm_kzalloc(&pdev->dev, sizeof(*scp), GFP_KERNEL);
 if (!scp)
  return ERR_PTR(-ENOMEM);

 scp->ctrl_reg.pwr_sta_offs = scp_ctrl_reg->pwr_sta_offs;
 scp->ctrl_reg.pwr_sta2nd_offs = scp_ctrl_reg->pwr_sta2nd_offs;

 scp->bus_prot_reg_update = bus_prot_reg_update;

 scp->dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 scp->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(scp->base))
  return ERR_CAST(scp->base);

 scp->domains = devm_kcalloc(&pdev->dev,
    num, sizeof(*scp->domains), GFP_KERNEL);
 if (!scp->domains)
  return ERR_PTR(-ENOMEM);

 pd_data = &scp->pd_data;

 pd_data->domains = devm_kcalloc(&pdev->dev,
   num, sizeof(*pd_data->domains), GFP_KERNEL);
 if (!pd_data->domains)
  return ERR_PTR(-ENOMEM);

 scp->infracfg = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
   "infracfg");
 if (IS_ERR(scp->infracfg)) {
  dev_err(&pdev->dev, "Cannot find infracfg controller: %ld\n",
    PTR_ERR(scp->infracfg));
  return ERR_CAST(scp->infracfg);
 }

 for (i = 0; i < num; i++) {
  struct scp_domain *scpd = &scp->domains[i];
  const struct scp_domain_data *data = &scp_domain_data[i];

  scpd->supply = devm_regulator_get_optional(&pdev->dev, data->name);
  if (IS_ERR(scpd->supply)) {
   if (PTR_ERR(scpd->supply) == -ENODEV)
    scpd->supply = ((void*)0);
   else
    return ERR_CAST(scpd->supply);
  }
 }

 pd_data->num_domains = num;

 init_clks(pdev, clk);

 for (i = 0; i < num; i++) {
  struct scp_domain *scpd = &scp->domains[i];
  struct generic_pm_domain *genpd = &scpd->genpd;
  const struct scp_domain_data *data = &scp_domain_data[i];

  pd_data->domains[i] = genpd;
  scpd->scp = scp;

  scpd->data = data;

  for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
   struct clk *c = clk[data->clk_id[j]];

   if (IS_ERR(c)) {
    dev_err(&pdev->dev, "%s: clk unavailable\n",
     data->name);
    return ERR_CAST(c);
   }

   scpd->clk[j] = c;
  }

  genpd->name = data->name;
  genpd->power_off = scpsys_power_off;
  genpd->power_on = scpsys_power_on;
  if (MTK_SCPD_CAPS(scpd, MTK_SCPD_ACTIVE_WAKEUP))
   genpd->flags |= GENPD_FLAG_ACTIVE_WAKEUP;
 }

 return scp;
}
