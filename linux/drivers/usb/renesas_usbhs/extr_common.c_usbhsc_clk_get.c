
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int ** clks; } ;
struct device {int dummy; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_of_node (struct device*) ;
 void* of_clk_get (int ,int) ;
 int usbhsc_is_multi_clks (struct usbhs_priv*) ;

__attribute__((used)) static int usbhsc_clk_get(struct device *dev, struct usbhs_priv *priv)
{
 if (!usbhsc_is_multi_clks(priv))
  return 0;


 priv->clks[0] = of_clk_get(dev_of_node(dev), 0);
 if (IS_ERR(priv->clks[0]))
  return PTR_ERR(priv->clks[0]);





 priv->clks[1] = of_clk_get(dev_of_node(dev), 1);
 if (PTR_ERR(priv->clks[1]) == -ENOENT)
  priv->clks[1] = ((void*)0);
 else if (IS_ERR(priv->clks[1]))
  return PTR_ERR(priv->clks[1]);

 return 0;
}
