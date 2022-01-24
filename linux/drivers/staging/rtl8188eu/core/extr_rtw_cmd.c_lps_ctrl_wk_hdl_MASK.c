#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct pwrctrl_priv {int /*<<< orphan*/  DelayLPSLastTimeStamp; int /*<<< orphan*/  LpsIdleCount; } ;
struct mlme_priv {int dummy; } ;
struct adapter {struct pwrctrl_priv pwrctrlpriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_H2C_FW_JOINBSSRPT ; 
#define  LPS_CTRL_CONNECT 133 
#define  LPS_CTRL_DISCONNECT 132 
#define  LPS_CTRL_JOINBSS 131 
#define  LPS_CTRL_LEAVE 130 
#define  LPS_CTRL_SCAN 129 
#define  LPS_CTRL_SPECIAL_PACKET 128 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC3(struct adapter *padapter, u8 lps_ctrl_type)
{
	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	u8	mstatus;

	if (FUNC1(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ||
	    FUNC1(pmlmepriv, WIFI_ADHOC_STATE))
		return;

	switch (lps_ctrl_type) {
	case LPS_CTRL_SCAN:
		if (FUNC1(pmlmepriv, _FW_LINKED)) {
			/* connect */
			FUNC0(padapter);
		}
		break;
	case LPS_CTRL_JOINBSS:
		FUNC0(padapter);
		break;
	case LPS_CTRL_CONNECT:
		mstatus = 1;/* connect */
		/*  Reset LPS Setting */
		padapter->pwrctrlpriv.LpsIdleCount = 0;
		FUNC2(padapter, HW_VAR_H2C_FW_JOINBSSRPT, (u8 *)(&mstatus));
		break;
	case LPS_CTRL_DISCONNECT:
		mstatus = 0;/* disconnect */
		FUNC0(padapter);
		FUNC2(padapter, HW_VAR_H2C_FW_JOINBSSRPT, (u8 *)(&mstatus));
		break;
	case LPS_CTRL_SPECIAL_PACKET:
		pwrpriv->DelayLPSLastTimeStamp = jiffies;
		FUNC0(padapter);
		break;
	case LPS_CTRL_LEAVE:
		FUNC0(padapter);
		break;
	default:
		break;
	}
}