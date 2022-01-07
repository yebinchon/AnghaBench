
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int * clks; } ;


 int ARRAY_SIZE (int *) ;
 int clk_disable_unprepare (int ) ;
 int usbhsc_is_multi_clks (struct usbhs_priv*) ;

__attribute__((used)) static void usbhsc_clk_disable_unprepare(struct usbhs_priv *priv)
{
 int i;

 if (!usbhsc_is_multi_clks(priv))
  return;

 for (i = 0; i < ARRAY_SIZE(priv->clks); i++)
  clk_disable_unprepare(priv->clks[i]);
}
