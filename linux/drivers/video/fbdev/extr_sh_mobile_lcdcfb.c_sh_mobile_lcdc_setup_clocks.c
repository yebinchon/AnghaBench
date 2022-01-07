
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {struct clk* dot_clk; int dev; int lddckr; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;



 int LDDCKR_ICKSEL_BUS ;
 int LDDCKR_ICKSEL_HDMI ;
 int LDDCKR_ICKSEL_MIPI ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get (int ,char*) ;
 int dev_err (int ,char*,char*) ;

__attribute__((used)) static int sh_mobile_lcdc_setup_clocks(struct sh_mobile_lcdc_priv *priv,
           int clock_source)
{
 struct clk *clk;
 char *str;

 switch (clock_source) {
 case 130:
  str = "bus_clk";
  priv->lddckr = LDDCKR_ICKSEL_BUS;
  break;
 case 128:
  str = "peripheral_clk";
  priv->lddckr = LDDCKR_ICKSEL_MIPI;
  break;
 case 129:
  str = ((void*)0);
  priv->lddckr = LDDCKR_ICKSEL_HDMI;
  break;
 default:
  return -EINVAL;
 }

 if (str == ((void*)0))
  return 0;

 clk = clk_get(priv->dev, str);
 if (IS_ERR(clk)) {
  dev_err(priv->dev, "cannot get dot clock %s\n", str);
  return PTR_ERR(clk);
 }

 priv->dot_clk = clk;
 return 0;
}
