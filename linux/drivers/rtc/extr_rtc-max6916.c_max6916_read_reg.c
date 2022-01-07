
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct device {int dummy; } ;


 int spi_write_then_read (struct spi_device*,unsigned char*,int,unsigned char*,int) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int max6916_read_reg(struct device *dev, unsigned char address,
       unsigned char *data)
{
 struct spi_device *spi = to_spi_device(dev);

 *data = address | 0x80;

 return spi_write_then_read(spi, data, 1, data, 1);
}
