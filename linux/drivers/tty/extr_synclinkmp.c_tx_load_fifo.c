
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_7__ {scalar_t__ tx; } ;
struct TYPE_8__ {int tx_count; scalar_t__ tx_get; scalar_t__ max_frame_size; TYPE_1__ icount; scalar_t__* tx_buf; scalar_t__ x_char; } ;
typedef TYPE_2__ SLMP_INFO ;


 int BIT1 ;
 int SR0 ;
 int TRB ;
 int read_reg (TYPE_2__*,int ) ;
 int write_reg (TYPE_2__*,int ,scalar_t__) ;
 int write_reg16 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void tx_load_fifo(SLMP_INFO *info)
{
 u8 TwoBytes[2];



 if ( !info->tx_count && !info->x_char )
  return;



 while( info->tx_count && (read_reg(info,SR0) & BIT1) ) {




  if ( (info->tx_count > 1) && !info->x_char ) {

   TwoBytes[0] = info->tx_buf[info->tx_get++];
   if (info->tx_get >= info->max_frame_size)
    info->tx_get -= info->max_frame_size;
   TwoBytes[1] = info->tx_buf[info->tx_get++];
   if (info->tx_get >= info->max_frame_size)
    info->tx_get -= info->max_frame_size;

   write_reg16(info, TRB, *((u16 *)TwoBytes));

   info->tx_count -= 2;
   info->icount.tx += 2;
  } else {


   if (info->x_char) {

    write_reg(info, TRB, info->x_char);
    info->x_char = 0;
   } else {
    write_reg(info, TRB, info->tx_buf[info->tx_get++]);
    if (info->tx_get >= info->max_frame_size)
     info->tx_get -= info->max_frame_size;
    info->tx_count--;
   }
   info->icount.tx++;
  }
 }
}
