
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pwrctrl_priv {int bips_processing; int bInternalAutoSuspend; int bInSuspend; int bkeepfwalive; scalar_t__ power_mgnt; int bLeisurePs; int bFwCurrentInPSMode; int tog; int brpwmtimeout; int wowlan_mode; int wowlan_ap_mode; int pno_inited; int pno_in_resume; int * pno_ssid_list; int * pscan_info; int * pnlo_info; int pwr_state_check_timer; int pwr_rpwm_timer; int rpwmtimeoutwi; struct adapter* adapter; int cpwm_event; scalar_t__ rpwm; scalar_t__ dtim; scalar_t__ bcn_ant_mode; int smart_ps; scalar_t__ pwr_mode; int cpwm; scalar_t__ LpsIdleCount; scalar_t__ pwr_state_check_cnts; int pwr_state_check_interval; int ips_mode_req; int ips_mode; scalar_t__ ips_leave_cnts; scalar_t__ ips_enter_cnts; int rf_pwrstate; int lock; } ;
struct TYPE_2__ {scalar_t__ power_mgnt; int smart_ps; int ips_mode; } ;
struct adapter {TYPE_1__ registrypriv; } ;


 int HW_VAR_SET_RPWM ;
 scalar_t__ PS_MODE_ACTIVE ;
 int PS_STATE_S4 ;
 int RTW_PWR_STATE_CHK_INTERVAL ;
 int _init_workitem (int *,int ,int *) ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 int cpwm_event_callback ;
 int mutex_init (int *) ;
 int pwr_rpwm_timeout_handler ;
 int pwr_state_check_handler ;
 int rf_on ;
 int rpwmtimeout_workitem_callback ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;
 int timer_setup (int *,int ,int ) ;

void rtw_init_pwrctrl_priv(struct adapter *padapter)
{
 struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(padapter);

 mutex_init(&pwrctrlpriv->lock);
 pwrctrlpriv->rf_pwrstate = rf_on;
 pwrctrlpriv->ips_enter_cnts = 0;
 pwrctrlpriv->ips_leave_cnts = 0;
 pwrctrlpriv->bips_processing = 0;

 pwrctrlpriv->ips_mode = padapter->registrypriv.ips_mode;
 pwrctrlpriv->ips_mode_req = padapter->registrypriv.ips_mode;

 pwrctrlpriv->pwr_state_check_interval = RTW_PWR_STATE_CHK_INTERVAL;
 pwrctrlpriv->pwr_state_check_cnts = 0;
 pwrctrlpriv->bInternalAutoSuspend = 0;
 pwrctrlpriv->bInSuspend = 0;
 pwrctrlpriv->bkeepfwalive = 0;

 pwrctrlpriv->LpsIdleCount = 0;
 pwrctrlpriv->power_mgnt = padapter->registrypriv.power_mgnt;
 pwrctrlpriv->bLeisurePs = pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE;

 pwrctrlpriv->bFwCurrentInPSMode = 0;

 pwrctrlpriv->rpwm = 0;
 pwrctrlpriv->cpwm = PS_STATE_S4;

 pwrctrlpriv->pwr_mode = PS_MODE_ACTIVE;
 pwrctrlpriv->smart_ps = padapter->registrypriv.smart_ps;
 pwrctrlpriv->bcn_ant_mode = 0;
 pwrctrlpriv->dtim = 0;

 pwrctrlpriv->tog = 0x80;

 rtw_hal_set_hwreg(padapter, HW_VAR_SET_RPWM, (u8 *)(&pwrctrlpriv->rpwm));

 _init_workitem(&pwrctrlpriv->cpwm_event, cpwm_event_callback, ((void*)0));

 pwrctrlpriv->brpwmtimeout = 0;
 pwrctrlpriv->adapter = padapter;
 _init_workitem(&pwrctrlpriv->rpwmtimeoutwi, rpwmtimeout_workitem_callback, ((void*)0));
 timer_setup(&pwrctrlpriv->pwr_rpwm_timer, pwr_rpwm_timeout_handler, 0);
 timer_setup(&pwrctrlpriv->pwr_state_check_timer,
      pwr_state_check_handler, 0);

 pwrctrlpriv->wowlan_mode = 0;
 pwrctrlpriv->wowlan_ap_mode = 0;
}
