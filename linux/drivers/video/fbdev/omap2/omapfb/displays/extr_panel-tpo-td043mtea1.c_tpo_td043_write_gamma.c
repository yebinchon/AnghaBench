
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_device {int dummy; } ;


 int tpo_td043_write (struct spi_device*,int,int) ;

__attribute__((used)) static void tpo_td043_write_gamma(struct spi_device *spi, u16 gamma[12])
{
 u8 i, val;


 for (val = i = 0; i < 4; i++)
  val |= (gamma[i] & 0x300) >> ((i + 1) * 2);
 tpo_td043_write(spi, 0x11, val);

 for (val = i = 0; i < 4; i++)
  val |= (gamma[i+4] & 0x300) >> ((i + 1) * 2);
 tpo_td043_write(spi, 0x12, val);

 for (val = i = 0; i < 4; i++)
  val |= (gamma[i+8] & 0x300) >> ((i + 1) * 2);
 tpo_td043_write(spi, 0x13, val);


 for (val = i = 0; i < 12; i++)
  tpo_td043_write(spi, 0x14 + i, gamma[i] & 0xff);
}
