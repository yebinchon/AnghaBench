
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9spi {int last_chipselect; int last_chipselect_val; } ;
struct spi_device {int mode; int chip_select; } ;


 int SPI_CS_HIGH ;
 int gpio_set_value (int,int) ;
 int ndelay (unsigned int) ;

__attribute__((used)) static void txx9spi_cs_func(struct spi_device *spi, struct txx9spi *c,
  int on, unsigned int cs_delay)
{
 int val = (spi->mode & SPI_CS_HIGH) ? on : !on;

 if (on) {

  if (c->last_chipselect >= 0)
   gpio_set_value(c->last_chipselect,
     !c->last_chipselect_val);
  c->last_chipselect = spi->chip_select;
  c->last_chipselect_val = val;
 } else {
  c->last_chipselect = -1;
  ndelay(cs_delay);
 }
 gpio_set_value(spi->chip_select, val);
 ndelay(cs_delay);
}
