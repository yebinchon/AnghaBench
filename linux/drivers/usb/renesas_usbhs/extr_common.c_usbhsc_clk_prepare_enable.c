
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int * clks; } ;


 int ARRAY_SIZE (int *) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int usbhsc_is_multi_clks (struct usbhs_priv*) ;

__attribute__((used)) static int usbhsc_clk_prepare_enable(struct usbhs_priv *priv)
{
 int i, ret;

 if (!usbhsc_is_multi_clks(priv))
  return 0;

 for (i = 0; i < ARRAY_SIZE(priv->clks); i++) {
  ret = clk_prepare_enable(priv->clks[i]);
  if (ret) {
   while (--i >= 0)
    clk_disable_unprepare(priv->clks[i]);
   return ret;
  }
 }

 return ret;
}
