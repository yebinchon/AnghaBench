
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int EXhalbtcoutsrc_PowerOnSetting (int *) ;
 int GLBtCoexist ;

void hal_btcoex_PowerOnSetting(struct adapter *padapter)
{
 EXhalbtcoutsrc_PowerOnSetting(&GLBtCoexist);
}
