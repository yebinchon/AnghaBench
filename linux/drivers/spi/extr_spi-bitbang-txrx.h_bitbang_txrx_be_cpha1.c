
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_device {int dummy; } ;


 unsigned int SPI_MASTER_NO_RX ;
 unsigned int SPI_MASTER_NO_TX ;
 int getmiso (struct spi_device*) ;
 scalar_t__ likely (int) ;
 int setmosi (struct spi_device*,int) ;
 int setsck (struct spi_device*,unsigned int) ;
 int spidelay (unsigned int) ;

__attribute__((used)) static inline u32
bitbang_txrx_be_cpha1(struct spi_device *spi,
  unsigned nsecs, unsigned cpol, unsigned flags,
  u32 word, u8 bits)
{


 u32 oldbit = (!(word & (1<<(bits-1)))) << 31;

 for (word <<= (32 - bits); likely(bits); bits--) {


  setsck(spi, !cpol);
  if ((flags & SPI_MASTER_NO_TX) == 0) {
   if ((word & (1 << 31)) != oldbit) {
    setmosi(spi, word & (1 << 31));
    oldbit = word & (1 << 31);
   }
  }
  spidelay(nsecs);

  setsck(spi, cpol);
  spidelay(nsecs);


  word <<= 1;
  if ((flags & SPI_MASTER_NO_RX) == 0)
   word |= getmiso(spi);
 }
 return word;
}
