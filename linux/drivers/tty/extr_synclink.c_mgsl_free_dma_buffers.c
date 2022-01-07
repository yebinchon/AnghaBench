
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {int tx_buffer_count; int tx_buffer_list; int rx_buffer_count; int rx_buffer_list; } ;


 int mgsl_free_buffer_list_memory (struct mgsl_struct*) ;
 int mgsl_free_frame_memory (struct mgsl_struct*,int ,int ) ;

__attribute__((used)) static void mgsl_free_dma_buffers( struct mgsl_struct *info )
{
 mgsl_free_frame_memory( info, info->rx_buffer_list, info->rx_buffer_count );
 mgsl_free_frame_memory( info, info->tx_buffer_list, info->tx_buffer_count );
 mgsl_free_buffer_list_memory( info );

}
