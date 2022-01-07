
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
typedef int buf ;


 int spi_write (struct spi_device*,int*,int) ;

__attribute__((used)) static inline int m41t93_set_reg(struct spi_device *spi, u8 addr, u8 data)
{
 u8 buf[2];


 buf[0] = addr | 0x80;
 buf[1] = data;

 return spi_write(spi, buf, sizeof(buf));
}
