
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {int dev; } ;
struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct max310x_one {int rd_header; } ;


 int ARRAY_SIZE (struct spi_transfer*) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int ) ;
 struct max310x_one* to_max310x_port (struct uart_port*) ;
 int to_spi_device (int ) ;

__attribute__((used)) static void max310x_batch_read(struct uart_port *port, u8 *rxbuf, unsigned int len)
{
 struct max310x_one *one = to_max310x_port(port);
 struct spi_transfer xfer[] = {
  {
   .tx_buf = &one->rd_header,
   .len = sizeof(one->rd_header),
  }, {
   .rx_buf = rxbuf,
   .len = len,
  }
 };
 spi_sync_transfer(to_spi_device(port->dev), xfer, ARRAY_SIZE(xfer));
}
