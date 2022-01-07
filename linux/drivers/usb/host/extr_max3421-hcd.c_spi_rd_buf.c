
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int transfer ;
struct TYPE_3__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_transfer {int* tx_buf; int len; void* rx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct max3421_hcd {TYPE_2__* tx; } ;
struct TYPE_4__ {int* data; } ;


 unsigned int MAX3421_SPI_DIR_RD ;
 int MAX3421_SPI_DIR_SHIFT ;
 int MAX3421_SPI_REG_SHIFT ;
 int field (unsigned int,int ) ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static void
spi_rd_buf(struct usb_hcd *hcd, unsigned int reg, void *buf, size_t len)
{
 struct spi_device *spi = to_spi_device(hcd->self.controller);
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 struct spi_transfer transfer[2];
 struct spi_message msg;

 memset(transfer, 0, sizeof(transfer));

 spi_message_init(&msg);

 max3421_hcd->tx->data[0] =
  (field(reg, MAX3421_SPI_REG_SHIFT) |
   field(MAX3421_SPI_DIR_RD, MAX3421_SPI_DIR_SHIFT));
 transfer[0].tx_buf = max3421_hcd->tx->data;
 transfer[0].len = 1;

 transfer[1].rx_buf = buf;
 transfer[1].len = len;

 spi_message_add_tail(&transfer[0], &msg);
 spi_message_add_tail(&transfer[1], &msg);
 spi_sync(spi, &msg);
}
