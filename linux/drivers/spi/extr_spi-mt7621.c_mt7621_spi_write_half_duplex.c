
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7621_spi {int pending_write; } ;


 scalar_t__ MT7621_SPI_OPCODE ;
 int mt7621_spi_flush (struct mt7621_spi*) ;
 int mt7621_spi_read (struct mt7621_spi*,scalar_t__) ;
 int mt7621_spi_write (struct mt7621_spi*,scalar_t__,int) ;
 int swab32 (int) ;

__attribute__((used)) static void mt7621_spi_write_half_duplex(struct mt7621_spi *rs,
      int tx_len, const u8 *buf)
{
 int len = rs->pending_write;
 int val = 0;

 if (len & 3) {
  val = mt7621_spi_read(rs, MT7621_SPI_OPCODE + (len & ~3));
  if (len < 4) {
   val <<= (4 - len) * 8;
   val = swab32(val);
  }
 }

 while (tx_len > 0) {
  if (len >= 36) {
   rs->pending_write = len;
   mt7621_spi_flush(rs);
   len = 0;
  }

  val |= *buf++ << (8 * (len & 3));
  len++;
  if ((len & 3) == 0) {
   if (len == 4)

    val = swab32(val);
   mt7621_spi_write(rs, MT7621_SPI_OPCODE + len - 4, val);
   val = 0;
  }
  tx_len -= 1;
 }

 if (len & 3) {
  if (len < 4) {
   val = swab32(val);
   val >>= (4 - len) * 8;
  }
  mt7621_spi_write(rs, MT7621_SPI_OPCODE + (len & ~3), val);
 }

 rs->pending_write = len;
}
