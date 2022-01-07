
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int bManualControl; } ;


 TYPE_1__ GLBtCoexist ;

void hal_btcoex_SetManualControl(struct adapter *padapter, u8 bmanual)
{
 GLBtCoexist.bManualControl = bmanual;
}
