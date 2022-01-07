
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {unsigned int length; scalar_t__ next; } ;
struct TYPE_10__ {unsigned int rx_buf_count; unsigned int tx_buf_count; TYPE_5__* tx_buf_list; scalar_t__ buffer_list_phys; TYPE_3__* tx_buf_list_ex; TYPE_5__* rx_buf_list; TYPE_2__* rx_buf_list_ex; scalar_t__ buffer_list; TYPE_1__** port_array; scalar_t__ memory_base; } ;
struct TYPE_9__ {scalar_t__ phys_entry; } ;
struct TYPE_8__ {scalar_t__ phys_entry; } ;
struct TYPE_7__ {scalar_t__ last_mem_alloc; } ;
typedef TYPE_4__ SLMP_INFO ;
typedef TYPE_5__ SCADESC ;


 scalar_t__ BUFFERLISTSIZE ;
 unsigned int SCABUFSIZE ;
 int memset (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int alloc_buf_list(SLMP_INFO *info)
{
 unsigned int i;


 info->buffer_list = info->memory_base + info->port_array[0]->last_mem_alloc;
 info->buffer_list_phys = info->port_array[0]->last_mem_alloc;
 info->port_array[0]->last_mem_alloc += BUFFERLISTSIZE;

 memset(info->buffer_list, 0, BUFFERLISTSIZE);




 info->rx_buf_list = (SCADESC *)info->buffer_list;

 info->tx_buf_list = (SCADESC *)info->buffer_list;
 info->tx_buf_list += info->rx_buf_count;







 for ( i = 0; i < info->rx_buf_count; i++ ) {

  info->rx_buf_list_ex[i].phys_entry =
   info->buffer_list_phys + (i * SCABUFSIZE);



  info->rx_buf_list[i].next = info->buffer_list_phys;
  if ( i < info->rx_buf_count - 1 )
   info->rx_buf_list[i].next += (i + 1) * sizeof(SCADESC);

  info->rx_buf_list[i].length = SCABUFSIZE;
 }

 for ( i = 0; i < info->tx_buf_count; i++ ) {

  info->tx_buf_list_ex[i].phys_entry = info->buffer_list_phys +
   ((info->rx_buf_count + i) * sizeof(SCADESC));




  info->tx_buf_list[i].next = info->buffer_list_phys +
   info->rx_buf_count * sizeof(SCADESC);

  if ( i < info->tx_buf_count - 1 )
   info->tx_buf_list[i].next += (i + 1) * sizeof(SCADESC);
 }

 return 0;
}
