
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adapter {int dummy; } ;
typedef int s32 ;
struct TYPE_3__ {int bBtCtrlAggBufSize; } ;
struct TYPE_4__ {TYPE_1__ btInfo; } ;


 TYPE_2__ GLBtCoexist ;

s32 hal_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter)
{
 return (s32)GLBtCoexist.btInfo.bBtCtrlAggBufSize;
}
