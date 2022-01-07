
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int transfer ;
struct TYPE_3__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_transfer {int* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct max3421_hcd {TYPE_2__* tx; } ;
struct TYPE_4__ {int* data; } ;


 int MAX3421_SPI_DIR_SHIFT ;
 unsigned int MAX3421_SPI_DIR_WR ;
 int MAX3421_SPI_REG_SHIFT ;
 int field (unsigned int,int ) ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static void
spi_wr8(struct usb_hcd *hcd, unsigned int reg, u8 val)
{
 struct spi_device *spi = to_spi_device(hcd->self.controller);
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 struct spi_transfer transfer;
 struct spi_message msg;

 memset(&transfer, 0, sizeof(transfer));

 spi_message_init(&msg);

 max3421_hcd->tx->data[0] =
  (field(reg, MAX3421_SPI_REG_SHIFT) |
   field(MAX3421_SPI_DIR_WR, MAX3421_SPI_DIR_SHIFT));
 max3421_hcd->tx->data[1] = val;

 transfer.tx_buf = max3421_hcd->tx->data;
 transfer.len = 2;

 spi_message_add_tail(&transfer, &msg);
 spi_sync(spi, &msg);
}
