
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {scalar_t__ base; } ;


 unsigned long ioread32 (scalar_t__) ;

__attribute__((used)) static unsigned long lcdc_read(struct sh_mobile_lcdc_priv *priv,
          unsigned long reg_offs)
{
 return ioread32(priv->base + reg_offs);
}
