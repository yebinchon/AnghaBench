
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mgsl_struct {unsigned int rx_buffer_count; unsigned int current_rx_buffer; TYPE_1__* rx_buffer_list; } ;
struct TYPE_2__ {int count; } ;
typedef TYPE_1__ DMABUFFERENTRY ;


 unsigned long DMABUFFERSIZE ;

__attribute__((used)) static void mgsl_free_rx_frame_buffers( struct mgsl_struct *info, unsigned int StartIndex, unsigned int EndIndex )
{
 bool Done = 0;
 DMABUFFERENTRY *pBufEntry;
 unsigned int Index;




 Index = StartIndex;

 while( !Done ) {
  pBufEntry = &(info->rx_buffer_list[Index]);

  if ( Index == EndIndex ) {

   Done = 1;
  }




  *((unsigned long *)&(pBufEntry->count)) = DMABUFFERSIZE;


  Index++;
  if ( Index == info->rx_buffer_count )
   Index = 0;
 }


 info->current_rx_buffer = Index;

}
