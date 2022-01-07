
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_spi {int dummy; } ;


 int SUN4I_INT_CTL_REG ;
 int sun4i_spi_read (struct sun4i_spi*,int ) ;
 int sun4i_spi_write (struct sun4i_spi*,int ,int ) ;

__attribute__((used)) static inline void sun4i_spi_disable_interrupt(struct sun4i_spi *sspi, u32 mask)
{
 u32 reg = sun4i_spi_read(sspi, SUN4I_INT_CTL_REG);

 reg &= ~mask;
 sun4i_spi_write(sspi, SUN4I_INT_CTL_REG, reg);
}
