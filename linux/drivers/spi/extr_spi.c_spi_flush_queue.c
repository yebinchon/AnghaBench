
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {scalar_t__ transfer; } ;


 int __spi_pump_messages (struct spi_controller*,int) ;
 scalar_t__ spi_queued_transfer ;

void spi_flush_queue(struct spi_controller *ctlr)
{
 if (ctlr->transfer == spi_queued_transfer)
  __spi_pump_messages(ctlr, 0);
}
