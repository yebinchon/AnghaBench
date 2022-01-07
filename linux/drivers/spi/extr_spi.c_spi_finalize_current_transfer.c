
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int xfer_completion; } ;


 int complete (int *) ;

void spi_finalize_current_transfer(struct spi_controller *ctlr)
{
 complete(&ctlr->xfer_completion);
}
