
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_gcu_priv {scalar_t__ mmio_base; } ;


 unsigned long __raw_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned long
gc_readl(struct pxa3xx_gcu_priv *priv, unsigned int off)
{
 return __raw_readl(priv->mmio_base + off);
}
