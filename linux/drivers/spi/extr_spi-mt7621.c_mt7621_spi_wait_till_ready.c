
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7621_spi {int dummy; } ;


 int ETIMEDOUT ;
 int MT7621_SPI_TRANS ;
 int RALINK_SPI_WAIT_MAX_LOOP ;
 int SPITRANS_BUSY ;
 int cpu_relax () ;
 int mt7621_spi_read (struct mt7621_spi*,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline int mt7621_spi_wait_till_ready(struct mt7621_spi *rs)
{
 int i;

 for (i = 0; i < RALINK_SPI_WAIT_MAX_LOOP; i++) {
  u32 status;

  status = mt7621_spi_read(rs, MT7621_SPI_TRANS);
  if ((status & SPITRANS_BUSY) == 0)
   return 0;
  cpu_relax();
  udelay(1);
 }

 return -ETIMEDOUT;
}
