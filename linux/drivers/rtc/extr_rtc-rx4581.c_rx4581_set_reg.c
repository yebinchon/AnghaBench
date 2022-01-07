
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct device {int dummy; } ;


 int spi_write_then_read (struct spi_device*,unsigned char*,int,int *,int ) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int rx4581_set_reg(struct device *dev, unsigned char address,
    unsigned char data)
{
 struct spi_device *spi = to_spi_device(dev);
 unsigned char buf[2];


 buf[0] = address & 0x0f;
 buf[1] = data;

 return spi_write_then_read(spi, buf, 2, ((void*)0), 0);
}
