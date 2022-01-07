
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u8 ;
typedef int u16 ;
struct spi_transfer {int* tx_buf; int len; void* rx_buf; } ;
struct spi_message {int dummy; } ;
struct hwbus_priv {TYPE_1__* func; } ;
typedef int regaddr ;
struct TYPE_2__ {int bits_per_word; } ;


 int SDIO_TO_SPI_ADDR (unsigned int) ;
 int SET_READ ;
 int cpu_to_le16 (int) ;
 int pr_info (char*,...) ;
 int printk (char*,...) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;
 int swab16 (int) ;

__attribute__((used)) static int cw1200_spi_memcpy_fromio(struct hwbus_priv *self,
         unsigned int addr,
         void *dst, int count)
{
 int ret, i;
 u16 regaddr;
 struct spi_message m;

 struct spi_transfer t_addr = {
  .tx_buf = &regaddr,
  .len = sizeof(regaddr),
 };
 struct spi_transfer t_msg = {
  .rx_buf = dst,
  .len = count,
 };

 regaddr = (SDIO_TO_SPI_ADDR(addr))<<12;
 regaddr |= SET_READ;
 regaddr |= (count>>1);






 regaddr = cpu_to_le16(regaddr);







  regaddr = swab16(regaddr);

 spi_message_init(&m);
 spi_message_add_tail(&t_addr, &m);
 spi_message_add_tail(&t_msg, &m);
 ret = spi_sync(self->func, &m);
 {
  uint16_t *buf = (uint16_t *)dst;
  for (i = 0; i < ((count + 1) >> 1); i++)
   buf[i] = swab16(buf[i]);
 }

 return ret;
}
