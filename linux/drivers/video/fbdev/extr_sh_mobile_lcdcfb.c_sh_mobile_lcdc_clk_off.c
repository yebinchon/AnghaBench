
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {scalar_t__ dot_clk; int dev; int hw_usecnt; } ;


 int atomic_sub_return (int,int *) ;
 int clk_disable_unprepare (scalar_t__) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void sh_mobile_lcdc_clk_off(struct sh_mobile_lcdc_priv *priv)
{
 if (atomic_sub_return(1, &priv->hw_usecnt) == -1) {
  pm_runtime_put(priv->dev);
  if (priv->dot_clk)
   clk_disable_unprepare(priv->dot_clk);
 }
}
