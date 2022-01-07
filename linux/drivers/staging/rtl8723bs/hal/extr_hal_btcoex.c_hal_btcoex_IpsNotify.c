
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int EXhalbtcoutsrc_IpsNotify (int *,int ) ;
 int GLBtCoexist ;

void hal_btcoex_IpsNotify(struct adapter *padapter, u8 type)
{
 EXhalbtcoutsrc_IpsNotify(&GLBtCoexist, type);
}
