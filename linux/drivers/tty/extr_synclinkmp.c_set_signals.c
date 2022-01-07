
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {int serial_signals; int port_num; TYPE_1__** port_array; } ;
struct TYPE_7__ {int ctrlreg_value; } ;
typedef TYPE_2__ SLMP_INFO ;


 unsigned char BIT0 ;
 int BIT1 ;
 int CTL ;
 int SerialSignal_DTR ;
 int SerialSignal_RTS ;
 unsigned char read_reg (TYPE_2__*,int ) ;
 int write_control_reg (TYPE_2__*) ;
 int write_reg (TYPE_2__*,int ,unsigned char) ;

__attribute__((used)) static void set_signals(SLMP_INFO *info)
{
 unsigned char RegValue;
 u16 EnableBit;

 RegValue = read_reg(info, CTL);
 if (info->serial_signals & SerialSignal_RTS)
  RegValue &= ~BIT0;
 else
  RegValue |= BIT0;
 write_reg(info, CTL, RegValue);


 EnableBit = BIT1 << (info->port_num*2);
 if (info->serial_signals & SerialSignal_DTR)
  info->port_array[0]->ctrlreg_value &= ~EnableBit;
 else
  info->port_array[0]->ctrlreg_value |= EnableBit;
 write_control_reg(info);
}
