
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int stop_bits; int data_bits; scalar_t__ parity; scalar_t__ loopback; int data_rate; } ;
struct mgsl_struct {int loopback_bits; scalar_t__ io_base; TYPE_1__ params; } ;


 scalar_t__ ASYNC_PARITY_NONE ;
 scalar_t__ ASYNC_PARITY_ODD ;
 int BIT14 ;
 int BIT2 ;
 int BIT3 ;
 int BIT4 ;
 int BIT5 ;
 int BIT6 ;
 scalar_t__ CCAR ;
 int CCSR ;
 int CMR ;
 int DmaCmd_ResetAllChannels ;
 int RCmd_SelectRicrIntLevel ;
 scalar_t__ RECEIVE_DATA ;
 scalar_t__ RECEIVE_STATUS ;
 int RICR ;
 int RMR ;
 int RXSTATUS_ALL ;
 int TCmd_SelectTicrIntLevel ;
 int TICR ;
 int TMR ;
 scalar_t__ TRANSMIT_DATA ;
 scalar_t__ TRANSMIT_STATUS ;
 int TXSTATUS_ALL ;
 int outw (int,scalar_t__) ;
 int usc_ClearIrqPendingBits (struct mgsl_struct*,scalar_t__) ;
 int usc_DisableInterrupts (struct mgsl_struct*,scalar_t__) ;
 int usc_DisableMasterIrqBit (struct mgsl_struct*) ;
 int usc_DmaCmd (struct mgsl_struct*,int ) ;
 int usc_EnableMasterIrqBit (struct mgsl_struct*) ;
 int usc_OutReg (struct mgsl_struct*,int ,int) ;
 int usc_RCmd (struct mgsl_struct*,int ) ;
 int usc_TCmd (struct mgsl_struct*,int ) ;
 int usc_UnlatchRxstatusBits (struct mgsl_struct*,int ) ;
 int usc_UnlatchTxstatusBits (struct mgsl_struct*,int ) ;
 int usc_enable_async_clock (struct mgsl_struct*,int ) ;
 int usc_loopback_frame (struct mgsl_struct*) ;
 int usc_set_txidle (struct mgsl_struct*) ;

__attribute__((used)) static void usc_set_async_mode( struct mgsl_struct *info )
{
 u16 RegValue;


 usc_DisableMasterIrqBit( info );

 outw( 0, info->io_base );
 usc_DmaCmd( info, DmaCmd_ResetAllChannels );

 usc_loopback_frame( info );
 RegValue = 0;
 if ( info->params.stop_bits != 1 )
  RegValue |= BIT14;
 usc_OutReg( info, CMR, RegValue );
 RegValue = 0;

 if ( info->params.data_bits != 8 )
  RegValue |= BIT4 | BIT3 | BIT2;

 if ( info->params.parity != ASYNC_PARITY_NONE ) {
  RegValue |= BIT5;
  if ( info->params.parity != ASYNC_PARITY_ODD )
   RegValue |= BIT6;
 }

 usc_OutReg( info, RMR, RegValue );




 usc_RCmd( info, RCmd_SelectRicrIntLevel );
 usc_OutReg( info, RICR, 0x0000 );

 usc_UnlatchRxstatusBits( info, RXSTATUS_ALL );
 usc_ClearIrqPendingBits( info, RECEIVE_STATUS );
 RegValue = 0;

 if ( info->params.data_bits != 8 )
  RegValue |= BIT4 | BIT3 | BIT2;

 if ( info->params.parity != ASYNC_PARITY_NONE ) {
  RegValue |= BIT5;
  if ( info->params.parity != ASYNC_PARITY_ODD )
   RegValue |= BIT6;
 }

 usc_OutReg( info, TMR, RegValue );

 usc_set_txidle( info );




 usc_TCmd( info, TCmd_SelectTicrIntLevel );
 usc_OutReg( info, TICR, 0x1f40 );

 usc_UnlatchTxstatusBits( info, TXSTATUS_ALL );
 usc_ClearIrqPendingBits( info, TRANSMIT_STATUS );

 usc_enable_async_clock( info, info->params.data_rate );
 usc_OutReg( info, CCSR, 0x0020 );

 usc_DisableInterrupts( info, TRANSMIT_STATUS + TRANSMIT_DATA +
         RECEIVE_DATA + RECEIVE_STATUS );

 usc_ClearIrqPendingBits( info, TRANSMIT_STATUS + TRANSMIT_DATA +
    RECEIVE_DATA + RECEIVE_STATUS );

 usc_EnableMasterIrqBit( info );

 if (info->params.loopback) {
  info->loopback_bits = 0x300;
  outw(0x0300, info->io_base + CCAR);
 }

}
