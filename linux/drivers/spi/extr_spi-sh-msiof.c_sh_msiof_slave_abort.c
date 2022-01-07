
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct sh_msiof_spi_priv {int slave_aborted; int done_txdma; int done; } ;


 int complete (int *) ;
 struct sh_msiof_spi_priv* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int sh_msiof_slave_abort(struct spi_controller *ctlr)
{
 struct sh_msiof_spi_priv *p = spi_controller_get_devdata(ctlr);

 p->slave_aborted = 1;
 complete(&p->done);
 complete(&p->done_txdma);
 return 0;
}
