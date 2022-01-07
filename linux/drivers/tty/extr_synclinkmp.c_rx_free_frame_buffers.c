
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int rx_buf_count; unsigned int current_rx_buf; TYPE_2__* rx_buf_list_ex; TYPE_1__* rx_buf_list; } ;
struct TYPE_7__ {int phys_entry; } ;
struct TYPE_6__ {int status; } ;
typedef TYPE_3__ SLMP_INFO ;


 scalar_t__ EDA ;
 scalar_t__ RXDMA ;
 int write_reg16 (TYPE_3__*,scalar_t__,int ) ;

__attribute__((used)) static void rx_free_frame_buffers(SLMP_INFO *info, unsigned int first, unsigned int last)
{
 bool done = 0;

 while(!done) {

  info->rx_buf_list[first].status = 0xff;

         if (first == last) {
                 done = 1;

   write_reg16(info, RXDMA + EDA, info->rx_buf_list_ex[first].phys_entry);
         }

         first++;
  if (first == info->rx_buf_count)
   first = 0;
 }


 info->current_rx_buf = first;
}
