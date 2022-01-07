
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int REG_PALEVEL ;
 int rf69_set_bit (struct spi_device*,int ,int ) ;

int rf69_enable_amplifier(struct spi_device *spi, u8 amplifier_mask)
{
 return rf69_set_bit(spi, REG_PALEVEL, amplifier_mask);
}
