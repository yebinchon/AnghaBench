
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_imx_data {unsigned int remainder; unsigned int count; scalar_t__ txfifo; TYPE_1__* devtype_data; int slave_mode; int (* tx ) (struct spi_imx_data*) ;scalar_t__ dynamic_burst; int bits_per_word; } ;
struct TYPE_2__ {scalar_t__ fifo_size; int (* trigger ) (struct spi_imx_data*) ;} ;


 scalar_t__ DIV_ROUND_UP (unsigned int,unsigned int) ;
 unsigned int MX51_ECSPI_CTRL_MAX_BURST ;
 unsigned int spi_imx_bytes_per_word (int ) ;
 int spi_imx_set_burst_len (struct spi_imx_data*,unsigned int) ;
 int stub1 (struct spi_imx_data*) ;
 int stub2 (struct spi_imx_data*) ;

__attribute__((used)) static void spi_imx_push(struct spi_imx_data *spi_imx)
{
 unsigned int burst_len, fifo_words;

 if (spi_imx->dynamic_burst)
  fifo_words = 4;
 else
  fifo_words = spi_imx_bytes_per_word(spi_imx->bits_per_word);





 if (!spi_imx->remainder) {
  if (spi_imx->dynamic_burst) {


   burst_len = spi_imx->count % MX51_ECSPI_CTRL_MAX_BURST;

   if (!burst_len)
    burst_len = MX51_ECSPI_CTRL_MAX_BURST;

   spi_imx_set_burst_len(spi_imx, burst_len * 8);

   spi_imx->remainder = burst_len;
  } else {
   spi_imx->remainder = fifo_words;
  }
 }

 while (spi_imx->txfifo < spi_imx->devtype_data->fifo_size) {
  if (!spi_imx->count)
   break;
  if (spi_imx->dynamic_burst &&
      spi_imx->txfifo >= DIV_ROUND_UP(spi_imx->remainder,
           fifo_words))
   break;
  spi_imx->tx(spi_imx);
  spi_imx->txfifo++;
 }

 if (!spi_imx->slave_mode)
  spi_imx->devtype_data->trigger(spi_imx);
}
