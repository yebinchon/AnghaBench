
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int NumRxUnicastOkInPeriod; } ;
struct mlme_priv {TYPE_1__ LinkDetectInfo; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
struct TYPE_4__ {scalar_t__ pwr_mode; scalar_t__ bLeisurePs; } ;


 int DBG_871X (char*,int) ;
 int LPS_CTRL_LEAVE ;
 scalar_t__ PS_MODE_ACTIVE ;
 TYPE_2__* adapter_to_pwrctl (struct adapter*) ;
 int hal_btcoex_IsBtControlLps (struct adapter*) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int rtw_lps_ctrl_wk_cmd (struct adapter*,int ,int) ;

void traffic_check_for_leave_lps(struct adapter *padapter, u8 tx, u32 tx_packets)
{
 static unsigned long start_time;
 static u32 xmit_cnt;
 u8 bLeaveLPS = 0;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;



 if (tx) {
  xmit_cnt += tx_packets;

  if (start_time == 0)
   start_time = jiffies;

  if (jiffies_to_msecs(jiffies - start_time) > 2000) {
   if (xmit_cnt > 8) {
    if (adapter_to_pwrctl(padapter)->bLeisurePs
        && (adapter_to_pwrctl(padapter)->pwr_mode != PS_MODE_ACTIVE)
        && !(hal_btcoex_IsBtControlLps(padapter))) {
     DBG_871X("leave lps via Tx = %d\n", xmit_cnt);
     bLeaveLPS = 1;
    }
   }

   start_time = jiffies;
   xmit_cnt = 0;
  }

 } else {
  if (pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod > 4 ) {
   if (adapter_to_pwrctl(padapter)->bLeisurePs
       && (adapter_to_pwrctl(padapter)->pwr_mode != PS_MODE_ACTIVE)
       && !(hal_btcoex_IsBtControlLps(padapter))) {
    DBG_871X("leave lps via Rx = %d\n", pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod);
    bLeaveLPS = 1;
   }
  }
 }

 if (bLeaveLPS)


  rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_LEAVE, tx?0:1);
}
