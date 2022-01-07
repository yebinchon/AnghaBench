
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int EXhalbtcoutsrc_SpecialPacketNotify (int *,int ) ;
 int GLBtCoexist ;

void hal_btcoex_SpecialPacketNotify(struct adapter *padapter, u8 pktType)
{
 EXhalbtcoutsrc_SpecialPacketNotify(&GLBtCoexist, pktType);
}
