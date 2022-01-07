
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int status; int * context; struct spi_device* spi; int complete; } ;
struct spi_device {int statistics; struct spi_controller* controller; } ;
struct spi_controller {scalar_t__ transfer; int statistics; int bus_lock_spinlock; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int SPI_STATISTICS_INCREMENT_FIELD (int *,int ) ;
 int __spi_pump_messages (struct spi_controller*,int) ;
 int __spi_queued_transfer (struct spi_device*,struct spi_message*,int) ;
 int __spi_validate (struct spi_device*,struct spi_message*) ;
 int done ;
 int spi_async_locked (struct spi_device*,struct spi_message*) ;
 int spi_complete ;
 scalar_t__ spi_queued_transfer ;
 int spi_sync ;
 int spi_sync_immediate ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_spi_message_submit (struct spi_message*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int __spi_sync(struct spi_device *spi, struct spi_message *message)
{
 DECLARE_COMPLETION_ONSTACK(done);
 int status;
 struct spi_controller *ctlr = spi->controller;
 unsigned long flags;

 status = __spi_validate(spi, message);
 if (status != 0)
  return status;

 message->complete = spi_complete;
 message->context = &done;
 message->spi = spi;

 SPI_STATISTICS_INCREMENT_FIELD(&ctlr->statistics, spi_sync);
 SPI_STATISTICS_INCREMENT_FIELD(&spi->statistics, spi_sync);






 if (ctlr->transfer == spi_queued_transfer) {
  spin_lock_irqsave(&ctlr->bus_lock_spinlock, flags);

  trace_spi_message_submit(message);

  status = __spi_queued_transfer(spi, message, 0);

  spin_unlock_irqrestore(&ctlr->bus_lock_spinlock, flags);
 } else {
  status = spi_async_locked(spi, message);
 }

 if (status == 0) {



  if (ctlr->transfer == spi_queued_transfer) {
   SPI_STATISTICS_INCREMENT_FIELD(&ctlr->statistics,
             spi_sync_immediate);
   SPI_STATISTICS_INCREMENT_FIELD(&spi->statistics,
             spi_sync_immediate);
   __spi_pump_messages(ctlr, 0);
  }

  wait_for_completion(&done);
  status = message->status;
 }
 message->context = ((void*)0);
 return status;
}
