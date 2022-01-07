
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {scalar_t__ rx_buf; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct rspi_data {int dummy; } ;


 int RSPI_SPCR ;
 int SPCR_TXMD ;
 int rspi_common_transfer (struct rspi_data*,struct spi_transfer*) ;
 int rspi_read8 (struct rspi_data*,int ) ;
 int rspi_receive_init (struct rspi_data*) ;
 int rspi_write8 (struct rspi_data*,int ,int ) ;
 struct rspi_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int rspi_transfer_one(struct spi_controller *ctlr,
        struct spi_device *spi, struct spi_transfer *xfer)
{
 struct rspi_data *rspi = spi_controller_get_devdata(ctlr);
 u8 spcr;

 spcr = rspi_read8(rspi, RSPI_SPCR);
 if (xfer->rx_buf) {
  rspi_receive_init(rspi);
  spcr &= ~SPCR_TXMD;
 } else {
  spcr |= SPCR_TXMD;
 }
 rspi_write8(rspi, spcr, RSPI_SPCR);

 return rspi_common_transfer(rspi, xfer);
}
