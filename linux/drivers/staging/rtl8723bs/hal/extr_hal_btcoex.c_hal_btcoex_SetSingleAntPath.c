
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int EXhalbtcoutsrc_SetSingleAntPath (int ) ;

void hal_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath)
{
 EXhalbtcoutsrc_SetSingleAntPath(singleAntPath);
}
