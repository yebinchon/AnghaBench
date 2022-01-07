
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlp_spi_priv {scalar_t__ base; } ;


 int SPI_CS_OFFSET ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 xlp_spi_reg_read(struct xlp_spi_priv *priv,
    int cs, int regoff)
{
 return readl(priv->base + regoff + cs * SPI_CS_OFFSET);
}
