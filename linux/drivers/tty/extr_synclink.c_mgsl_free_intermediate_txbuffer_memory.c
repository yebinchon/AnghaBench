
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mgsl_struct {int num_tx_holding_buffers; scalar_t__ tx_holding_count; scalar_t__ put_tx_holding_index; scalar_t__ get_tx_holding_index; TYPE_1__* tx_holding_buffers; } ;
struct TYPE_2__ {int * buffer; } ;


 int kfree (int *) ;

__attribute__((used)) static void mgsl_free_intermediate_txbuffer_memory(struct mgsl_struct *info)
{
 int i;

 for ( i=0; i<info->num_tx_holding_buffers; ++i ) {
  kfree(info->tx_holding_buffers[i].buffer);
  info->tx_holding_buffers[i].buffer = ((void*)0);
 }

 info->get_tx_holding_index = 0;
 info->put_tx_holding_index = 0;
 info->tx_holding_count = 0;

}
