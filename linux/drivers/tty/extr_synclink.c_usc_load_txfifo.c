
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ tx; } ;
struct mgsl_struct {int xmit_cnt; int x_char; int* xmit_buf; int xmit_tail; TYPE_1__ icount; scalar_t__ io_base; } ;


 scalar_t__ CCAR ;
 scalar_t__ DATAREG ;
 int LSBONLY ;
 int SERIAL_XMIT_SIZE ;
 int TCmd_SelectTicrTxFifostatus ;
 int TDR ;
 int TICR ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_TCmd (struct mgsl_struct*,int ) ;

__attribute__((used)) static void usc_load_txfifo( struct mgsl_struct *info )
{
 int Fifocount;
 u8 TwoBytes[2];

 if ( !info->xmit_cnt && !info->x_char )
  return;


 usc_TCmd( info, TCmd_SelectTicrTxFifostatus );



 while( (Fifocount = usc_InReg(info, TICR) >> 8) && info->xmit_cnt ) {



  if ( (info->xmit_cnt > 1) && (Fifocount > 1) && !info->x_char ) {


   TwoBytes[0] = info->xmit_buf[info->xmit_tail++];
   info->xmit_tail = info->xmit_tail & (SERIAL_XMIT_SIZE-1);
   TwoBytes[1] = info->xmit_buf[info->xmit_tail++];
   info->xmit_tail = info->xmit_tail & (SERIAL_XMIT_SIZE-1);

   outw( *((u16 *)TwoBytes), info->io_base + DATAREG);

   info->xmit_cnt -= 2;
   info->icount.tx += 2;
  } else {


   outw( (inw( info->io_base + CCAR) & 0x0780) | (TDR+LSBONLY),
    info->io_base + CCAR );

   if (info->x_char) {

    outw( info->x_char,info->io_base + CCAR );
    info->x_char = 0;
   } else {
    outw( info->xmit_buf[info->xmit_tail++],info->io_base + CCAR );
    info->xmit_tail = info->xmit_tail & (SERIAL_XMIT_SIZE-1);
    info->xmit_cnt--;
   }
   info->icount.tx++;
  }
 }

}
