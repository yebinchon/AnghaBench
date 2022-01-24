#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct pwrctrl_priv {int bips_processing; int bInternalAutoSuspend; int bInSuspend; int bkeepfwalive; scalar_t__ power_mgnt; int bLeisurePs; int bFwCurrentInPSMode; int tog; int brpwmtimeout; int wowlan_mode; int wowlan_ap_mode; int pno_inited; int pno_in_resume; int /*<<< orphan*/ * pno_ssid_list; int /*<<< orphan*/ * pscan_info; int /*<<< orphan*/ * pnlo_info; int /*<<< orphan*/  pwr_state_check_timer; int /*<<< orphan*/  pwr_rpwm_timer; int /*<<< orphan*/  rpwmtimeoutwi; struct adapter* adapter; int /*<<< orphan*/  cpwm_event; scalar_t__ rpwm; scalar_t__ dtim; scalar_t__ bcn_ant_mode; int /*<<< orphan*/  smart_ps; scalar_t__ pwr_mode; int /*<<< orphan*/  cpwm; scalar_t__ LpsIdleCount; scalar_t__ pwr_state_check_cnts; int /*<<< orphan*/  pwr_state_check_interval; int /*<<< orphan*/  ips_mode_req; int /*<<< orphan*/  ips_mode; scalar_t__ ips_leave_cnts; scalar_t__ ips_enter_cnts; int /*<<< orphan*/  rf_pwrstate; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {scalar_t__ power_mgnt; int /*<<< orphan*/  smart_ps; int /*<<< orphan*/  ips_mode; } ;
struct adapter {TYPE_1__ registrypriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_SET_RPWM ; 
 scalar_t__ PS_MODE_ACTIVE ; 
 int /*<<< orphan*/  PS_STATE_S4 ; 
 int /*<<< orphan*/  RTW_PWR_STATE_CHK_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pwrctrl_priv* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  cpwm_event_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pwr_rpwm_timeout_handler ; 
 int /*<<< orphan*/  pwr_state_check_handler ; 
 int /*<<< orphan*/  rf_on ; 
 int /*<<< orphan*/  rpwmtimeout_workitem_callback ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct adapter *padapter)
{
	struct pwrctrl_priv *pwrctrlpriv = FUNC1(padapter);

	FUNC2(&pwrctrlpriv->lock);
	pwrctrlpriv->rf_pwrstate = rf_on;
	pwrctrlpriv->ips_enter_cnts = 0;
	pwrctrlpriv->ips_leave_cnts = 0;
	pwrctrlpriv->bips_processing = false;

	pwrctrlpriv->ips_mode = padapter->registrypriv.ips_mode;
	pwrctrlpriv->ips_mode_req = padapter->registrypriv.ips_mode;

	pwrctrlpriv->pwr_state_check_interval = RTW_PWR_STATE_CHK_INTERVAL;
	pwrctrlpriv->pwr_state_check_cnts = 0;
	pwrctrlpriv->bInternalAutoSuspend = false;
	pwrctrlpriv->bInSuspend = false;
	pwrctrlpriv->bkeepfwalive = false;

	pwrctrlpriv->LpsIdleCount = 0;
	pwrctrlpriv->power_mgnt = padapter->registrypriv.power_mgnt;/*  PS_MODE_MIN; */
	pwrctrlpriv->bLeisurePs = pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE;

	pwrctrlpriv->bFwCurrentInPSMode = false;

	pwrctrlpriv->rpwm = 0;
	pwrctrlpriv->cpwm = PS_STATE_S4;

	pwrctrlpriv->pwr_mode = PS_MODE_ACTIVE;
	pwrctrlpriv->smart_ps = padapter->registrypriv.smart_ps;
	pwrctrlpriv->bcn_ant_mode = 0;
	pwrctrlpriv->dtim = 0;

	pwrctrlpriv->tog = 0x80;

	FUNC3(padapter, HW_VAR_SET_RPWM, (u8 *)(&pwrctrlpriv->rpwm));

	FUNC0(&pwrctrlpriv->cpwm_event, cpwm_event_callback, NULL);

	pwrctrlpriv->brpwmtimeout = false;
	pwrctrlpriv->adapter = padapter;
	FUNC0(&pwrctrlpriv->rpwmtimeoutwi, rpwmtimeout_workitem_callback, NULL);
	FUNC4(&pwrctrlpriv->pwr_rpwm_timer, pwr_rpwm_timeout_handler, 0);
	FUNC4(&pwrctrlpriv->pwr_state_check_timer,
		    pwr_state_check_handler, 0);

	pwrctrlpriv->wowlan_mode = false;
	pwrctrlpriv->wowlan_ap_mode = false;

#ifdef CONFIG_PNO_SUPPORT
	pwrctrlpriv->pno_inited = false;
	pwrctrlpriv->pnlo_info = NULL;
	pwrctrlpriv->pscan_info = NULL;
	pwrctrlpriv->pno_ssid_list = NULL;
	pwrctrlpriv->pno_in_resume = true;
#endif
}