#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_3__ {int NumRxUnicastOkInPeriod; } ;
struct mlme_priv {TYPE_1__ LinkDetectInfo; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
struct TYPE_4__ {scalar_t__ pwr_mode; scalar_t__ bLeisurePs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  LPS_CTRL_LEAVE ; 
 scalar_t__ PS_MODE_ACTIVE ; 
 TYPE_2__* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 unsigned long jiffies ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct adapter *padapter, u8 tx, u32 tx_packets)
{
	static unsigned long start_time;
	static u32 xmit_cnt;
	u8 bLeaveLPS = false;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;



	if (tx) { /* from tx */
		xmit_cnt += tx_packets;

		if (start_time == 0)
			start_time = jiffies;

		if (FUNC3(jiffies - start_time) > 2000) { /*  2 sec == watch dog timer */
			if (xmit_cnt > 8) {
				if (FUNC1(padapter)->bLeisurePs
				    && (FUNC1(padapter)->pwr_mode != PS_MODE_ACTIVE)
				    && !(FUNC2(padapter))) {
					FUNC0("leave lps via Tx = %d\n", xmit_cnt);
					bLeaveLPS = true;
				}
			}

			start_time = jiffies;
			xmit_cnt = 0;
		}

	} else { /*  from rx path */
		if (pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod > 4/*2*/) {
			if (FUNC1(padapter)->bLeisurePs
			    && (FUNC1(padapter)->pwr_mode != PS_MODE_ACTIVE)
			    && !(FUNC2(padapter))) {
				FUNC0("leave lps via Rx = %d\n", pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod);
				bLeaveLPS = true;
			}
		}
	}

	if (bLeaveLPS)
		/* DBG_871X("leave lps via %s, Tx = %d, Rx = %d\n", tx?"Tx":"Rx", pmlmepriv->LinkDetectInfo.NumTxOkInPeriod, pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod); */
		/* rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_LEAVE, 1); */
		FUNC4(padapter, LPS_CTRL_LEAVE, tx?0:1);
}