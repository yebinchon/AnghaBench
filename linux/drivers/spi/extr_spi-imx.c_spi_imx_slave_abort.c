
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct spi_imx_data {int slave_aborted; int xfer_done; } ;


 int complete (int *) ;
 struct spi_imx_data* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int spi_imx_slave_abort(struct spi_master *master)
{
 struct spi_imx_data *spi_imx = spi_master_get_devdata(master);

 spi_imx->slave_aborted = 1;
 complete(&spi_imx->xfer_done);

 return 0;
}
