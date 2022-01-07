
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sprd_spi {int rx_buf; scalar_t__ base; } ;


 scalar_t__ SPRD_SPI_TXD ;
 int readb_relaxed (scalar_t__) ;

__attribute__((used)) static int sprd_spi_read_bufs_u8(struct sprd_spi *ss, u32 len)
{
 u8 *rx_p = (u8 *)ss->rx_buf;
 int i;

 for (i = 0; i < len; i++)
  rx_p[i] = readb_relaxed(ss->base + SPRD_SPI_TXD);

 ss->rx_buf += i;
 return i;
}
