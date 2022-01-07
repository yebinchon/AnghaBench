
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct mtk_spi_slave {int slave_aborted; int xfer_done; } ;


 int complete (int *) ;
 struct mtk_spi_slave* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int mtk_slave_abort(struct spi_controller *ctlr)
{
 struct mtk_spi_slave *mdata = spi_controller_get_devdata(ctlr);

 mdata->slave_aborted = 1;
 complete(&mdata->xfer_done);

 return 0;
}
