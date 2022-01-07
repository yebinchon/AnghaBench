
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int mode; int dev; } ;
struct mt7621_spi {unsigned int speed; int sys_freq; } ;


 int DIV_ROUND_UP (int ,unsigned int) ;
 int EINVAL ;
 int MASTER_RS_CLK_SEL ;
 int MASTER_RS_CLK_SEL_SHIFT ;
 int MT7621_CPHA ;
 int MT7621_CPOL ;
 int MT7621_LSB_FIRST ;
 int MT7621_SPI_MASTER ;
 int SPI_LSB_FIRST ;
 int dev_dbg (int *,char*,int) ;
 int mt7621_spi_read (struct mt7621_spi*,int ) ;
 int mt7621_spi_write (struct mt7621_spi*,int ,int) ;
 struct mt7621_spi* spidev_to_mt7621_spi (struct spi_device*) ;

__attribute__((used)) static int mt7621_spi_prepare(struct spi_device *spi, unsigned int speed)
{
 struct mt7621_spi *rs = spidev_to_mt7621_spi(spi);
 u32 rate;
 u32 reg;

 dev_dbg(&spi->dev, "speed:%u\n", speed);

 rate = DIV_ROUND_UP(rs->sys_freq, speed);
 dev_dbg(&spi->dev, "rate-1:%u\n", rate);

 if (rate > 4097)
  return -EINVAL;

 if (rate < 2)
  rate = 2;

 reg = mt7621_spi_read(rs, MT7621_SPI_MASTER);
 reg &= ~MASTER_RS_CLK_SEL;
 reg |= (rate - 2) << MASTER_RS_CLK_SEL_SHIFT;
 rs->speed = speed;

 reg &= ~MT7621_LSB_FIRST;
 if (spi->mode & SPI_LSB_FIRST)
  reg |= MT7621_LSB_FIRST;






 reg &= ~(MT7621_CPHA | MT7621_CPOL);

 mt7621_spi_write(rs, MT7621_SPI_MASTER, reg);

 return 0;
}
