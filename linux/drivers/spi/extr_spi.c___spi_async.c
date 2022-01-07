
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {struct spi_device* spi; } ;
struct spi_device {int statistics; struct spi_controller* controller; } ;
struct spi_controller {int (* transfer ) (struct spi_device*,struct spi_message*) ;int statistics; } ;


 int ENOTSUPP ;
 int SPI_STATISTICS_INCREMENT_FIELD (int *,int ) ;
 int spi_async ;
 int stub1 (struct spi_device*,struct spi_message*) ;
 int trace_spi_message_submit (struct spi_message*) ;

__attribute__((used)) static int __spi_async(struct spi_device *spi, struct spi_message *message)
{
 struct spi_controller *ctlr = spi->controller;





 if (!ctlr->transfer)
  return -ENOTSUPP;

 message->spi = spi;

 SPI_STATISTICS_INCREMENT_FIELD(&ctlr->statistics, spi_async);
 SPI_STATISTICS_INCREMENT_FIELD(&spi->statistics, spi_async);

 trace_spi_message_submit(message);

 return ctlr->transfer(spi, message);
}
