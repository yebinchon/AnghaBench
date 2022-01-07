
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_gcu_priv {scalar_t__ mmio_base; } ;


 int __raw_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void
gc_writel(struct pxa3xx_gcu_priv *priv, unsigned int off, unsigned long val)
{
 __raw_writel(val, priv->mmio_base + off);
}
