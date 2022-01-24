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
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_H2C_FW_JOINBSSRPT ; 
#define  LPS_CTRL_CONNECT 134 
#define  LPS_CTRL_DISCONNECT 133 
#define  LPS_CTRL_JOINBSS 132 
#define  LPS_CTRL_LEAVE 131 
#define  LPS_CTRL_SCAN 130 
#define  LPS_CTRL_SPECIAL_PACKET 129 
#define  LPS_CTRL_TRAFFIC_BUSY 128 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*) ; 
 int /*<<< orphan*/  PACKET_DHCP ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 struct pwrctrl_priv* FUNC1 (struct adapter*) ; 
 int FUNC2 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int*) ; 

void FUNC7(struct adapter *padapter, u8 lps_ctrl_type)
{
	struct pwrctrl_priv *pwrpriv = FUNC1(padapter);
	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
	u8 mstatus;

	if ((FUNC2(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true)
		|| (FUNC2(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
		return;
	}

	switch (lps_ctrl_type) {
	case LPS_CTRL_SCAN:
		/* DBG_871X("LPS_CTRL_SCAN\n"); */
		FUNC3(padapter, true);

		if (FUNC2(pmlmepriv, _FW_LINKED) == true) {
			/*  connect */
			FUNC0(padapter, "LPS_CTRL_SCAN");
		}
		break;
	case LPS_CTRL_JOINBSS:
		/* DBG_871X("LPS_CTRL_JOINBSS\n"); */
		FUNC0(padapter, "LPS_CTRL_JOINBSS");
		break;
	case LPS_CTRL_CONNECT:
		/* DBG_871X("LPS_CTRL_CONNECT\n"); */
		mstatus = 1;/* connect */
		/*  Reset LPS Setting */
		pwrpriv->LpsIdleCount = 0;
		FUNC6(padapter, HW_VAR_H2C_FW_JOINBSSRPT, (u8 *)(&mstatus));
		FUNC5(padapter, mstatus);
		break;
	case LPS_CTRL_DISCONNECT:
		/* DBG_871X("LPS_CTRL_DISCONNECT\n"); */
		mstatus = 0;/* disconnect */
		FUNC5(padapter, mstatus);
		FUNC0(padapter, "LPS_CTRL_DISCONNECT");
		FUNC6(padapter, HW_VAR_H2C_FW_JOINBSSRPT, (u8 *)(&mstatus));
		break;
	case LPS_CTRL_SPECIAL_PACKET:
		/* DBG_871X("LPS_CTRL_SPECIAL_PACKET\n"); */
		pwrpriv->DelayLPSLastTimeStamp = jiffies;
		FUNC4(padapter, PACKET_DHCP);
		FUNC0(padapter, "LPS_CTRL_SPECIAL_PACKET");
		break;
	case LPS_CTRL_LEAVE:
		/* DBG_871X("LPS_CTRL_LEAVE\n"); */
		FUNC0(padapter, "LPS_CTRL_LEAVE");
		break;
	case LPS_CTRL_TRAFFIC_BUSY:
		FUNC0(padapter, "LPS_CTRL_TRAFFIC_BUSY");
	default:
		break;
	}
}