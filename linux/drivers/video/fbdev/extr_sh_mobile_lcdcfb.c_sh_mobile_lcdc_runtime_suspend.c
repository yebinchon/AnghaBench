
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {int dummy; } ;
struct device {int dummy; } ;


 int _LDCNT1R ;
 struct sh_mobile_lcdc_priv* dev_get_drvdata (struct device*) ;
 int lcdc_write (struct sh_mobile_lcdc_priv*,int ,int ) ;

__attribute__((used)) static int sh_mobile_lcdc_runtime_suspend(struct device *dev)
{
 struct sh_mobile_lcdc_priv *priv = dev_get_drvdata(dev);


 lcdc_write(priv, _LDCNT1R, 0);

 return 0;
}
