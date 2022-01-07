
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pwrctrl_priv {scalar_t__ pwr_state_check_cnts; } ;
struct TYPE_7__ {int bBusyTraffic; scalar_t__ LowPowerTransitionCount; scalar_t__ TrafficTransitionCount; } ;
struct mlme_priv {TYPE_2__ LinkDetectInfo; } ;
struct TYPE_10__ {scalar_t__ rx_pkts; } ;
struct TYPE_8__ {int state; } ;
struct TYPE_9__ {TYPE_3__ sitesurvey_res; } ;
struct TYPE_6__ {scalar_t__ tx_pkts; } ;
struct adapter {TYPE_5__ recvpriv; TYPE_4__ mlmeextpriv; TYPE_1__ xmitpriv; scalar_t__ bLinkInfoDump; struct mlme_priv mlmepriv; } ;


 int DF_RX_BIT ;
 int DF_TX_BIT ;
 int RTW_ENABLE_FUNC (struct adapter*,int ) ;
 int SCAN_DISABLE ;
 int _FW_UNDER_LINKING ;
 int _FW_UNDER_SURVEY ;
 int _clr_fwstate_ (struct mlme_priv*,int) ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 scalar_t__ is_primary_adapter (struct adapter*) ;
 int rtw_hal_def_value_init (struct adapter*) ;
 int rtw_set_signal_stat_timer (TYPE_5__*) ;

void rtw_reset_drv_sw(struct adapter *padapter)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(padapter);


 if (is_primary_adapter(padapter))
  rtw_hal_def_value_init(padapter);

 RTW_ENABLE_FUNC(padapter, DF_RX_BIT);
 RTW_ENABLE_FUNC(padapter, DF_TX_BIT);
 padapter->bLinkInfoDump = 0;

 padapter->xmitpriv.tx_pkts = 0;
 padapter->recvpriv.rx_pkts = 0;

 pmlmepriv->LinkDetectInfo.bBusyTraffic = 0;


 pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0;
 pmlmepriv->LinkDetectInfo.LowPowerTransitionCount = 0;

 _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING);

 pwrctrlpriv->pwr_state_check_cnts = 0;


 padapter->mlmeextpriv.sitesurvey_res.state = SCAN_DISABLE;

 rtw_set_signal_stat_timer(&padapter->recvpriv);

}
