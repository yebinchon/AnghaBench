
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct adapter {int dummy; } ;
struct TYPE_3__ {int rpwmVal; } ;
struct TYPE_4__ {TYPE_1__ btInfo; } ;


 TYPE_2__ GLBtCoexist ;

u8 hal_btcoex_RpwmVal(struct adapter *padapter)
{
 return GLBtCoexist.btInfo.rpwmVal;
}
