
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_holding_buffer {int buffer_size; int buffer; } ;
struct mgsl_struct {size_t get_tx_holding_index; int xmit_cnt; size_t num_tx_holding_buffers; int tx_timer; scalar_t__ tx_holding_count; struct tx_holding_buffer* tx_holding_buffers; } ;


 int DMABUFFERSIZE ;
 scalar_t__ jiffies ;
 int mgsl_load_tx_dma_buffer (struct mgsl_struct*,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int num_free_tx_dma_buffers (struct mgsl_struct*) ;

__attribute__((used)) static bool load_next_tx_holding_buffer(struct mgsl_struct *info)
{
 bool ret = 0;

 if ( info->tx_holding_count ) {



  struct tx_holding_buffer *ptx =
   &info->tx_holding_buffers[info->get_tx_holding_index];
  int num_free = num_free_tx_dma_buffers(info);
  int num_needed = ptx->buffer_size / DMABUFFERSIZE;
  if ( ptx->buffer_size % DMABUFFERSIZE )
   ++num_needed;

  if (num_needed <= num_free) {
   info->xmit_cnt = ptx->buffer_size;
   mgsl_load_tx_dma_buffer(info,ptx->buffer,ptx->buffer_size);

   --info->tx_holding_count;
   if ( ++info->get_tx_holding_index >= info->num_tx_holding_buffers)
    info->get_tx_holding_index=0;


   mod_timer(&info->tx_timer, jiffies + msecs_to_jiffies(5000));

   ret = 1;
  }
 }

 return ret;
}
