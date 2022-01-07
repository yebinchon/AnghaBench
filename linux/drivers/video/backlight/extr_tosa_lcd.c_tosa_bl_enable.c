
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int TG_GPODR2 ;
 int tosa_tg_send (struct spi_device*,int ,int) ;

int tosa_bl_enable(struct spi_device *spi, int enable)
{

 return tosa_tg_send(spi, TG_GPODR2, enable ? 0x01 : 0x00);
}
