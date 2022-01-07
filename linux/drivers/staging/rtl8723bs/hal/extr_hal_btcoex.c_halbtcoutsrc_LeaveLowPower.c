
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u32 ;
struct adapter {int dummy; } ;
typedef scalar_t__ s32 ;
struct TYPE_3__ {struct adapter* Adapter; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTCOEX_ALIVE ;
 unsigned long LPS_RPWM_WAIT_MS ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 unsigned long jiffies ;
 unsigned long jiffies_to_msecs (unsigned long) ;
 int msleep (int) ;
 scalar_t__ rtw_register_task_alive (struct adapter*,int ) ;

__attribute__((used)) static void halbtcoutsrc_LeaveLowPower(PBTC_COEXIST pBtCoexist)
{
 struct adapter *padapter;
 s32 ready;
 unsigned long stime;
 unsigned long utime;
 u32 timeout;


 padapter = pBtCoexist->Adapter;
 ready = _FAIL;



 timeout = 30;


 stime = jiffies;
 do {
  ready = rtw_register_task_alive(padapter, BTCOEX_ALIVE);
  if (_SUCCESS == ready)
   break;

  utime = jiffies_to_msecs(jiffies - stime);
  if (utime > timeout)
   break;

  msleep(1);
 } while (1);
}
