
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int TPO_R04_CP_CLK_FREQ_1H ;
 int TPO_R04_NFLIP_H ;
 int TPO_R04_NFLIP_V ;
 int TPO_R04_VGL_FREQ_1H ;
 int tpo_td043_write (struct spi_device*,int,int) ;

__attribute__((used)) static int tpo_td043_write_mirror(struct spi_device *spi, bool h, bool v)
{
 u8 reg4 = TPO_R04_NFLIP_H | TPO_R04_NFLIP_V |
  TPO_R04_CP_CLK_FREQ_1H | TPO_R04_VGL_FREQ_1H;
 if (h)
  reg4 &= ~TPO_R04_NFLIP_H;
 if (v)
  reg4 &= ~TPO_R04_NFLIP_V;

 return tpo_td043_write(spi, 4, reg4);
}
