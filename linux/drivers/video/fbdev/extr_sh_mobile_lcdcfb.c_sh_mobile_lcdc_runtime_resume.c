
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {int dummy; } ;
struct device {int dummy; } ;


 int __sh_mobile_lcdc_start (struct sh_mobile_lcdc_priv*) ;
 struct sh_mobile_lcdc_priv* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int sh_mobile_lcdc_runtime_resume(struct device *dev)
{
 struct sh_mobile_lcdc_priv *priv = dev_get_drvdata(dev);

 __sh_mobile_lcdc_start(priv);

 return 0;
}
