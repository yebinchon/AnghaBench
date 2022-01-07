
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mgsl_struct {unsigned char serial_signals; } ;


 int BIT4 ;
 int BIT6 ;
 int PCR ;
 unsigned char SerialSignal_DTR ;
 unsigned char SerialSignal_RTS ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_OutReg (struct mgsl_struct*,int ,int ) ;

__attribute__((used)) static void usc_set_serial_signals( struct mgsl_struct *info )
{
 u16 Control;
 unsigned char V24Out = info->serial_signals;



 Control = usc_InReg( info, PCR );

 if ( V24Out & SerialSignal_RTS )
  Control &= ~(BIT6);
 else
  Control |= BIT6;

 if ( V24Out & SerialSignal_DTR )
  Control &= ~(BIT4);
 else
  Control |= BIT4;

 usc_OutReg( info, PCR, Control );

}
