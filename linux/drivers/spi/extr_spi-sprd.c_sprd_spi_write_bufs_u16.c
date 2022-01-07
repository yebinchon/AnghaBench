
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sprd_spi {int tx_buf; scalar_t__ base; } ;


 scalar_t__ SPRD_SPI_TXD ;
 int writew_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int sprd_spi_write_bufs_u16(struct sprd_spi *ss, u32 len)
{
 u16 *tx_p = (u16 *)ss->tx_buf;
 int i;

 for (i = 0; i < len; i++)
  writew_relaxed(tx_p[i], ss->base + SPRD_SPI_TXD);

 ss->tx_buf += i << 1;
 return i << 1;
}
