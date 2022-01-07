
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int chip_select; } ;
struct mt7621_spi {scalar_t__ pending_write; } ;


 int BIT (int) ;
 int MASTER_FULL_DUPLEX ;
 int MASTER_MORE_BUFMODE ;
 int MASTER_RS_SLAVE_SEL ;
 int MT7621_SPI_MASTER ;
 int MT7621_SPI_POLAR ;
 int mt7621_spi_read (struct mt7621_spi*,int ) ;
 int mt7621_spi_write (struct mt7621_spi*,int ,int) ;
 struct mt7621_spi* spidev_to_mt7621_spi (struct spi_device*) ;

__attribute__((used)) static void mt7621_spi_set_cs(struct spi_device *spi, int enable)
{
 struct mt7621_spi *rs = spidev_to_mt7621_spi(spi);
 int cs = spi->chip_select;
 u32 polar = 0;
 u32 master;






 master = mt7621_spi_read(rs, MT7621_SPI_MASTER);
 master |= MASTER_RS_SLAVE_SEL | MASTER_MORE_BUFMODE;
 master &= ~MASTER_FULL_DUPLEX;
 mt7621_spi_write(rs, MT7621_SPI_MASTER, master);

 rs->pending_write = 0;

 if (enable)
  polar = BIT(cs);
 mt7621_spi_write(rs, MT7621_SPI_POLAR, polar);
}
