
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int EXhalbtcoutsrc_BtInfoNotify (int *,int *,int ) ;
 int GLBtCoexist ;
 scalar_t__ GLBtcWiFiInIQKState ;

void hal_btcoex_BtInfoNotify(struct adapter *padapter, u8 length, u8 *tmpBuf)
{
 if (GLBtcWiFiInIQKState)
  return;

 EXhalbtcoutsrc_BtInfoNotify(&GLBtCoexist, tmpBuf, length);
}
