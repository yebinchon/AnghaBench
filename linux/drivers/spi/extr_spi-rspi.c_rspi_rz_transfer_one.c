
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int dummy; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct rspi_data {int dummy; } ;


 int rspi_common_transfer (struct rspi_data*,struct spi_transfer*) ;
 int rspi_rz_receive_init (struct rspi_data*) ;
 struct rspi_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int rspi_rz_transfer_one(struct spi_controller *ctlr,
    struct spi_device *spi,
    struct spi_transfer *xfer)
{
 struct rspi_data *rspi = spi_controller_get_devdata(ctlr);

 rspi_rz_receive_init(rspi);

 return rspi_common_transfer(rspi, xfer);
}
