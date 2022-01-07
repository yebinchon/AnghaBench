
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_phy_ctx {scalar_t__ mode; int dev; } ;
typedef enum clk_type_t { ____Placeholder_clk_type_t } clk_type_t ;


 int ENODEV ;
 scalar_t__ MODE_SATA ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,scalar_t__) ;
 int xgene_phy_hw_init_sata (struct xgene_phy_ctx*,int,int) ;

__attribute__((used)) static int xgene_phy_hw_initialize(struct xgene_phy_ctx *ctx,
       enum clk_type_t clk_type,
       int ssc_enable)
{
 int rc;

 dev_dbg(ctx->dev, "PHY init clk type %d\n", clk_type);

 if (ctx->mode == MODE_SATA) {
  rc = xgene_phy_hw_init_sata(ctx, clk_type, ssc_enable);
  if (rc)
   return rc;
 } else {
  dev_err(ctx->dev, "Un-supported customer pin mode %d\n",
   ctx->mode);
  return -ENODEV;
 }

 return 0;
}
