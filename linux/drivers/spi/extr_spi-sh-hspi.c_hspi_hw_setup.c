
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {int speed_hz; } ;
struct spi_message {struct spi_device* spi; } ;
struct spi_device {int mode; } ;
struct hspi_priv {int clk; struct device* dev; } ;
struct device {int dummy; } ;


 int SPCR ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPSCR ;
 int SPSR ;
 int abs (int ) ;
 int clk_get_rate (int ) ;
 int dev_dbg (struct device*,char*,int ,int) ;
 int hspi_write (struct hspi_priv*,int ,int) ;

__attribute__((used)) static void hspi_hw_setup(struct hspi_priv *hspi,
     struct spi_message *msg,
     struct spi_transfer *t)
{
 struct spi_device *spi = msg->spi;
 struct device *dev = hspi->dev;
 u32 spcr, idiv_clk;
 u32 rate, best_rate, min, tmp;




 min = ~0;
 best_rate = 0;
 spcr = 0;
 for (idiv_clk = 0x00; idiv_clk <= 0x3F; idiv_clk++) {
  rate = clk_get_rate(hspi->clk);


  if (idiv_clk & (1 << 5))
   rate /= 128;
  else
   rate /= 16;


  rate /= (((idiv_clk & 0x1F) + 1) * 2);


  tmp = abs(t->speed_hz - rate);
  if (tmp < min) {
   min = tmp;
   spcr = idiv_clk;
   best_rate = rate;
  }
 }

 if (spi->mode & SPI_CPHA)
  spcr |= 1 << 7;
 if (spi->mode & SPI_CPOL)
  spcr |= 1 << 6;

 dev_dbg(dev, "speed %d/%d\n", t->speed_hz, best_rate);

 hspi_write(hspi, SPCR, spcr);
 hspi_write(hspi, SPSR, 0x0);
 hspi_write(hspi, SPSCR, 0x21);
}
