
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct ili9320_spi {int message; TYPE_2__* xfer; int buffer_data; int buffer_addr; struct spi_device* dev; } ;
struct TYPE_3__ {struct ili9320_spi spi; } ;
struct ili9320 {int write; TYPE_1__ access; } ;
struct TYPE_4__ {int len; int bits_per_word; int cs_change; int tx_buf; } ;


 int ili9320_write_spi ;
 int spi_message_add_tail (TYPE_2__*,int *) ;
 int spi_message_init (int *) ;

__attribute__((used)) static void ili9320_setup_spi(struct ili9320 *ili,
     struct spi_device *dev)
{
 struct ili9320_spi *spi = &ili->access.spi;

 ili->write = ili9320_write_spi;
 spi->dev = dev;






 spi->xfer[0].tx_buf = spi->buffer_addr;
 spi->xfer[1].tx_buf = spi->buffer_data;
 spi->xfer[0].len = 3;
 spi->xfer[1].len = 3;
 spi->xfer[0].bits_per_word = 8;
 spi->xfer[1].bits_per_word = 8;
 spi->xfer[0].cs_change = 1;

 spi_message_init(&spi->message);
 spi_message_add_tail(&spi->xfer[0], &spi->message);
 spi_message_add_tail(&spi->xfer[1], &spi->message);
}
