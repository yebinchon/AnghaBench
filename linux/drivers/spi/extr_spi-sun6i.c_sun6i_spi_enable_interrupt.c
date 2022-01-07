
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun6i_spi {int dummy; } ;


 int SUN6I_INT_CTL_REG ;
 int sun6i_spi_read (struct sun6i_spi*,int ) ;
 int sun6i_spi_write (struct sun6i_spi*,int ,int ) ;

__attribute__((used)) static inline void sun6i_spi_enable_interrupt(struct sun6i_spi *sspi, u32 mask)
{
 u32 reg = sun6i_spi_read(sspi, SUN6I_INT_CTL_REG);

 reg |= mask;
 sun6i_spi_write(sspi, SUN6I_INT_CTL_REG, reg);
}
