
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
typedef enum mantisse { ____Placeholder_mantisse } mantisse ;


 int REG_AFCBW ;
 int rf69_set_bandwidth_intern (struct spi_device*,int ,int,int ) ;

int rf69_set_bandwidth_during_afc(struct spi_device *spi,
      enum mantisse mantisse,
      u8 exponent)
{
 return rf69_set_bandwidth_intern(spi, REG_AFCBW, mantisse, exponent);
}
