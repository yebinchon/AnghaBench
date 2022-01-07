
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_phy_ctx {int dev; int clk; } ;
struct phy {int dummy; } ;


 int CLK_EXT_DIFF ;
 int IS_ERR (int ) ;
 int MAX_LANE ;
 int SSC_DISABLE ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 struct xgene_phy_ctx* phy_get_drvdata (struct phy*) ;
 int xgene_phy_gen_avg_val (struct xgene_phy_ctx*,int) ;
 int xgene_phy_hw_initialize (struct xgene_phy_ctx*,int ,int ) ;

__attribute__((used)) static int xgene_phy_hw_init(struct phy *phy)
{
 struct xgene_phy_ctx *ctx = phy_get_drvdata(phy);
 int rc;
 int i;

 rc = xgene_phy_hw_initialize(ctx, CLK_EXT_DIFF, SSC_DISABLE);
 if (rc) {
  dev_err(ctx->dev, "PHY initialize failed %d\n", rc);
  return rc;
 }


 if (!IS_ERR(ctx->clk)) {

  clk_prepare_enable(ctx->clk);
  clk_disable_unprepare(ctx->clk);
  clk_prepare_enable(ctx->clk);
 }


 for (i = 0; i < MAX_LANE; i++)
  xgene_phy_gen_avg_val(ctx, i);

 dev_dbg(ctx->dev, "PHY initialized\n");
 return 0;
}
