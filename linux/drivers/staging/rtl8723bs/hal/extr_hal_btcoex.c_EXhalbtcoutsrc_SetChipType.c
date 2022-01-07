
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int btChipType; } ;
struct TYPE_4__ {TYPE_1__ boardInfo; } ;


 int BTC_CHIP_RTL8723B ;
 TYPE_2__ GLBtCoexist ;

void EXhalbtcoutsrc_SetChipType(u8 chipType)
{
 GLBtCoexist.boardInfo.btChipType = BTC_CHIP_RTL8723B;
}
