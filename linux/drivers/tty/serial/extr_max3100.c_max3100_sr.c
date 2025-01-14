
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct spi_transfer {int* tx_buf; int* rx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct max3100_port {int tx_empty; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int MAX3100_T ;
 int be16_to_cpu (int) ;
 int cpu_to_be16 (int) ;
 int dev_dbg (int *,char*,int,int) ;
 int dev_warn (int *,char*) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;

__attribute__((used)) static int max3100_sr(struct max3100_port *s, u16 tx, u16 *rx)
{
 struct spi_message message;
 u16 etx, erx;
 int status;
 struct spi_transfer tran = {
  .tx_buf = &etx,
  .rx_buf = &erx,
  .len = 2,
 };

 etx = cpu_to_be16(tx);
 spi_message_init(&message);
 spi_message_add_tail(&tran, &message);
 status = spi_sync(s->spi, &message);
 if (status) {
  dev_warn(&s->spi->dev, "error while calling spi_sync\n");
  return -EIO;
 }
 *rx = be16_to_cpu(erx);
 s->tx_empty = (*rx & MAX3100_T) > 0;
 dev_dbg(&s->spi->dev, "%04x - %04x\n", tx, *rx);
 return 0;
}
