
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_qup {scalar_t__ mode; int in_blk_sz; scalar_t__ base; int w_size; scalar_t__ rx_bytes; } ;


 int DIV_ROUND_UP (scalar_t__,int ) ;
 scalar_t__ QUP_IO_M_MODE_BLOCK ;
 scalar_t__ QUP_OPERATIONAL ;
 int QUP_OP_IN_BLOCK_READ_REQ ;
 int QUP_OP_IN_FIFO_NOT_EMPTY ;
 int QUP_OP_IN_SERVICE_FLAG ;
 int QUP_OP_MAX_INPUT_DONE_FLAG ;
 int readl_relaxed (scalar_t__) ;
 int spi_qup_is_flag_set (struct spi_qup*,int ) ;
 scalar_t__ spi_qup_len (struct spi_qup*) ;
 int spi_qup_read_from_fifo (struct spi_qup*,int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void spi_qup_read(struct spi_qup *controller, u32 *opflags)
{
 u32 remainder, words_per_block, num_words;
 bool is_block_mode = controller->mode == QUP_IO_M_MODE_BLOCK;

 remainder = DIV_ROUND_UP(spi_qup_len(controller) - controller->rx_bytes,
     controller->w_size);
 words_per_block = controller->in_blk_sz >> 2;

 do {

  writel_relaxed(QUP_OP_IN_SERVICE_FLAG,
          controller->base + QUP_OPERATIONAL);

  if (!remainder)
   goto exit;

  if (is_block_mode) {
   num_words = (remainder > words_per_block) ?
     words_per_block : remainder;
  } else {
   if (!spi_qup_is_flag_set(controller,
       QUP_OP_IN_FIFO_NOT_EMPTY))
    break;

   num_words = 1;
  }


  spi_qup_read_from_fifo(controller, num_words);

  remainder -= num_words;


  if (is_block_mode && !spi_qup_is_flag_set(controller,
     QUP_OP_IN_BLOCK_READ_REQ))
   break;

 } while (remainder);







exit:
 if (!remainder) {
  *opflags = readl_relaxed(controller->base + QUP_OPERATIONAL);
  if (is_block_mode && *opflags & QUP_OP_MAX_INPUT_DONE_FLAG)
   writel_relaxed(QUP_OP_IN_SERVICE_FLAG,
           controller->base + QUP_OPERATIONAL);
 }
}
