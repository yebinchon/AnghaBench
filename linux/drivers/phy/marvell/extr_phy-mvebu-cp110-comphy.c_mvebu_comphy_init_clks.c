
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_comphy_priv {int * axi_clk; int * mg_core_clk; int * mg_domain_clk; int dev; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int clk_disable_unprepare (int *) ;
 int clk_prepare_enable (int *) ;
 void* devm_clk_get (int ,char*) ;

__attribute__((used)) static int mvebu_comphy_init_clks(struct mvebu_comphy_priv *priv)
{
 int ret;

 priv->mg_domain_clk = devm_clk_get(priv->dev, "mg_clk");
 if (IS_ERR(priv->mg_domain_clk))
  return PTR_ERR(priv->mg_domain_clk);

 ret = clk_prepare_enable(priv->mg_domain_clk);
 if (ret < 0)
  return ret;

 priv->mg_core_clk = devm_clk_get(priv->dev, "mg_core_clk");
 if (IS_ERR(priv->mg_core_clk)) {
  ret = PTR_ERR(priv->mg_core_clk);
  goto dis_mg_domain_clk;
 }

 ret = clk_prepare_enable(priv->mg_core_clk);
 if (ret < 0)
  goto dis_mg_domain_clk;

 priv->axi_clk = devm_clk_get(priv->dev, "axi_clk");
 if (IS_ERR(priv->axi_clk)) {
  ret = PTR_ERR(priv->axi_clk);
  goto dis_mg_core_clk;
 }

 ret = clk_prepare_enable(priv->axi_clk);
 if (ret < 0)
  goto dis_mg_core_clk;

 return 0;

dis_mg_core_clk:
 clk_disable_unprepare(priv->mg_core_clk);

dis_mg_domain_clk:
 clk_disable_unprepare(priv->mg_domain_clk);

 priv->mg_domain_clk = ((void*)0);
 priv->mg_core_clk = ((void*)0);
 priv->axi_clk = ((void*)0);

 return ret;
}
