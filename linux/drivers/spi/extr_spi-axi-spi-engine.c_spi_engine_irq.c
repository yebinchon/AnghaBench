
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int frame_length; int actual_length; scalar_t__ status; } ;
struct spi_master {int dummy; } ;
struct spi_engine {unsigned int int_enable; int lock; scalar_t__ base; struct spi_message* msg; int p; void* sync_id; void* completed_id; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int SPI_ENGINE_INT_CMD_ALMOST_EMPTY ;
 unsigned int SPI_ENGINE_INT_SDI_ALMOST_FULL ;
 unsigned int SPI_ENGINE_INT_SDO_ALMOST_EMPTY ;
 unsigned int SPI_ENGINE_INT_SYNC ;
 scalar_t__ SPI_ENGINE_REG_INT_ENABLE ;
 scalar_t__ SPI_ENGINE_REG_INT_PENDING ;
 scalar_t__ SPI_ENGINE_REG_SYNC_ID ;
 int kfree (int ) ;
 void* readl_relaxed (scalar_t__) ;
 int spi_engine_read_rx_fifo (struct spi_engine*) ;
 int spi_engine_write_cmd_fifo (struct spi_engine*) ;
 int spi_engine_write_tx_fifo (struct spi_engine*) ;
 int spi_finalize_current_message (struct spi_master*) ;
 struct spi_engine* spi_master_get_devdata (struct spi_master*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t spi_engine_irq(int irq, void *devid)
{
 struct spi_master *master = devid;
 struct spi_engine *spi_engine = spi_master_get_devdata(master);
 unsigned int disable_int = 0;
 unsigned int pending;

 pending = readl_relaxed(spi_engine->base + SPI_ENGINE_REG_INT_PENDING);

 if (pending & SPI_ENGINE_INT_SYNC) {
  writel_relaxed(SPI_ENGINE_INT_SYNC,
   spi_engine->base + SPI_ENGINE_REG_INT_PENDING);
  spi_engine->completed_id = readl_relaxed(
   spi_engine->base + SPI_ENGINE_REG_SYNC_ID);
 }

 spin_lock(&spi_engine->lock);

 if (pending & SPI_ENGINE_INT_CMD_ALMOST_EMPTY) {
  if (!spi_engine_write_cmd_fifo(spi_engine))
   disable_int |= SPI_ENGINE_INT_CMD_ALMOST_EMPTY;
 }

 if (pending & SPI_ENGINE_INT_SDO_ALMOST_EMPTY) {
  if (!spi_engine_write_tx_fifo(spi_engine))
   disable_int |= SPI_ENGINE_INT_SDO_ALMOST_EMPTY;
 }

 if (pending & (SPI_ENGINE_INT_SDI_ALMOST_FULL | SPI_ENGINE_INT_SYNC)) {
  if (!spi_engine_read_rx_fifo(spi_engine))
   disable_int |= SPI_ENGINE_INT_SDI_ALMOST_FULL;
 }

 if (pending & SPI_ENGINE_INT_SYNC) {
  if (spi_engine->msg &&
      spi_engine->completed_id == spi_engine->sync_id) {
   struct spi_message *msg = spi_engine->msg;

   kfree(spi_engine->p);
   msg->status = 0;
   msg->actual_length = msg->frame_length;
   spi_engine->msg = ((void*)0);
   spi_finalize_current_message(master);
   disable_int |= SPI_ENGINE_INT_SYNC;
  }
 }

 if (disable_int) {
  spi_engine->int_enable &= ~disable_int;
  writel_relaxed(spi_engine->int_enable,
   spi_engine->base + SPI_ENGINE_REG_INT_ENABLE);
 }

 spin_unlock(&spi_engine->lock);

 return IRQ_HANDLED;
}
