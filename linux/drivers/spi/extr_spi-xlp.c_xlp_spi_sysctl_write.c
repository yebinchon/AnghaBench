
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlp_spi_priv {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void xlp_spi_sysctl_write(struct xlp_spi_priv *priv,
    int regoff, u32 val)
{
 writel(val, priv->base + regoff);
}
