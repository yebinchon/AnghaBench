
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adapter {int dummy; } ;
struct TYPE_3__ {scalar_t__ bBtLpsOn; scalar_t__ bBtDisabled; } ;
struct TYPE_4__ {TYPE_1__ btInfo; } ;


 TYPE_2__ GLBtCoexist ;
 int hal_btcoex_IsBtExist (struct adapter*) ;

bool hal_btcoex_IsLpsOn(struct adapter *padapter)
{
 if (!hal_btcoex_IsBtExist(padapter))
  return 0;

 if (GLBtCoexist.btInfo.bBtDisabled)
  return 0;

 if (GLBtCoexist.btInfo.bBtLpsOn)
  return 1;

 return 0;
}
