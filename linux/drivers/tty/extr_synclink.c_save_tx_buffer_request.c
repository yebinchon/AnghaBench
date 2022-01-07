
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_holding_buffer {unsigned int buffer_size; int buffer; } ;
struct mgsl_struct {size_t tx_holding_count; size_t num_tx_holding_buffers; size_t put_tx_holding_index; struct tx_holding_buffer* tx_holding_buffers; } ;


 int memcpy (int ,char const*,unsigned int) ;

__attribute__((used)) static int save_tx_buffer_request(struct mgsl_struct *info,const char *Buffer, unsigned int BufferSize)
{
 struct tx_holding_buffer *ptx;

 if ( info->tx_holding_count >= info->num_tx_holding_buffers ) {
  return 0;
 }

 ptx = &info->tx_holding_buffers[info->put_tx_holding_index];
 ptx->buffer_size = BufferSize;
 memcpy( ptx->buffer, Buffer, BufferSize);

 ++info->tx_holding_count;
 if ( ++info->put_tx_holding_index >= info->num_tx_holding_buffers)
  info->put_tx_holding_index=0;

 return 1;
}
