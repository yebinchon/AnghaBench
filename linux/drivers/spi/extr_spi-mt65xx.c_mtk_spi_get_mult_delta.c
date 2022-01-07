
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MTK_SPI_PACKET_SIZE ;

__attribute__((used)) static int mtk_spi_get_mult_delta(u32 xfer_len)
{
 u32 mult_delta;

 if (xfer_len > MTK_SPI_PACKET_SIZE)
  mult_delta = xfer_len % MTK_SPI_PACKET_SIZE;
 else
  mult_delta = 0;

 return mult_delta;
}
