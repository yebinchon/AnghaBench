
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int idle_mode; } ;
typedef TYPE_1__ SLMP_INFO ;
 int IDL ;
 int write_reg (TYPE_1__*,int ,unsigned char) ;

__attribute__((used)) static void tx_set_idle(SLMP_INFO *info)
{
 unsigned char RegValue = 0xff;


 switch(info->idle_mode) {
 case 132: RegValue = 0x7e; break;
 case 133: RegValue = 0xaa; break;
 case 128: RegValue = 0x00; break;
 case 130: RegValue = 0xff; break;
 case 134: RegValue = 0xaa; break;
 case 129: RegValue = 0x00; break;
 case 131: RegValue = 0xff; break;
 }

 write_reg(info, IDL, RegValue);
}
