
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct ad7280_state {int * buf; int spi; } ;


 int AD7280A_READ_TXVAL ;
 unsigned int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int) ;

__attribute__((used)) static int __ad7280_read32(struct ad7280_state *st, unsigned int *val)
{
 int ret;
 struct spi_transfer t = {
  .tx_buf = &st->buf[0],
  .rx_buf = &st->buf[1],
  .len = 4,
 };

 st->buf[0] = cpu_to_be32(AD7280A_READ_TXVAL);

 ret = spi_sync_transfer(st->spi, &t, 1);
 if (ret)
  return ret;

 *val = be32_to_cpu(st->buf[1]);

 return 0;
}
