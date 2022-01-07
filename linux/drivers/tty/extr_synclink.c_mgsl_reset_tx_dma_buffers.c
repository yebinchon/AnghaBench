
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mgsl_struct {unsigned int tx_buffer_count; scalar_t__ tx_holding_count; scalar_t__ put_tx_holding_index; scalar_t__ get_tx_holding_index; scalar_t__ tx_dma_buffers_used; scalar_t__ start_tx_dma_buffer; scalar_t__ current_tx_buffer; TYPE_1__* tx_buffer_list; } ;
struct TYPE_2__ {int count; } ;



__attribute__((used)) static void mgsl_reset_tx_dma_buffers( struct mgsl_struct *info )
{
 unsigned int i;

 for ( i = 0; i < info->tx_buffer_count; i++ ) {
  *((unsigned long *)&(info->tx_buffer_list[i].count)) = 0;
 }

 info->current_tx_buffer = 0;
 info->start_tx_dma_buffer = 0;
 info->tx_dma_buffers_used = 0;

 info->get_tx_holding_index = 0;
 info->put_tx_holding_index = 0;
 info->tx_holding_count = 0;

}
