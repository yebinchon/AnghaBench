
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_lp8841_rtc {int dummy; } ;


 unsigned int SPI_MASTER_NO_RX ;
 unsigned int SPI_MASTER_NO_TX ;
 int getmiso (struct spi_lp8841_rtc*) ;
 scalar_t__ likely (int) ;
 int setmosi (struct spi_lp8841_rtc*,int) ;
 int setsck (struct spi_lp8841_rtc*,unsigned int) ;
 int usleep_range (unsigned int,unsigned int) ;

__attribute__((used)) static inline u32
bitbang_txrx_be_cpha0_lsb(struct spi_lp8841_rtc *data,
  unsigned usecs, unsigned cpol, unsigned flags,
  u32 word, u8 bits)
{


 u32 shift = 32 - bits;

 for (; likely(bits); bits--) {


  if ((flags & SPI_MASTER_NO_TX) == 0)
   setmosi(data, (word & 1));

  usleep_range(usecs, usecs + 1);


  word >>= 1;
  if ((flags & SPI_MASTER_NO_RX) == 0)
   word |= (getmiso(data) << 31);

  setsck(data, !cpol);
  usleep_range(usecs, usecs + 1);

  setsck(data, cpol);
 }

 word >>= shift;
 return word;
}
