
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_qup {scalar_t__ mode; int out_blk_sz; scalar_t__ base; int w_size; scalar_t__ tx_bytes; } ;


 int DIV_ROUND_UP (scalar_t__,int ) ;
 scalar_t__ QUP_IO_M_MODE_BLOCK ;
 scalar_t__ QUP_OPERATIONAL ;
 int QUP_OP_OUT_BLOCK_WRITE_REQ ;
 int QUP_OP_OUT_FIFO_FULL ;
 int QUP_OP_OUT_SERVICE_FLAG ;
 scalar_t__ spi_qup_is_flag_set (struct spi_qup*,int ) ;
 scalar_t__ spi_qup_len (struct spi_qup*) ;
 int spi_qup_write_to_fifo (struct spi_qup*,int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void spi_qup_write(struct spi_qup *controller)
{
 bool is_block_mode = controller->mode == QUP_IO_M_MODE_BLOCK;
 u32 remainder, words_per_block, num_words;

 remainder = DIV_ROUND_UP(spi_qup_len(controller) - controller->tx_bytes,
     controller->w_size);
 words_per_block = controller->out_blk_sz >> 2;

 do {

  writel_relaxed(QUP_OP_OUT_SERVICE_FLAG,
          controller->base + QUP_OPERATIONAL);


  if (!remainder)
   return;

  if (is_block_mode) {
   num_words = (remainder > words_per_block) ?
    words_per_block : remainder;
  } else {
   if (spi_qup_is_flag_set(controller,
      QUP_OP_OUT_FIFO_FULL))
    break;

   num_words = 1;
  }

  spi_qup_write_to_fifo(controller, num_words);

  remainder -= num_words;


  if (is_block_mode && !spi_qup_is_flag_set(controller,
     QUP_OP_OUT_BLOCK_WRITE_REQ))
   break;

 } while (remainder);
}
