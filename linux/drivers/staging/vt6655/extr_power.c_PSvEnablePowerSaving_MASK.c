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
typedef  int u16 ;
struct vnt_private {int current_aid; scalar_t__ op_mode; int bEnablePSMode; int bPWBitOn; scalar_t__ PortOffset; } ;
struct TYPE_2__ {int /*<<< orphan*/  wCurrATIMWindow; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int C_PWBT ; 
 scalar_t__ MAC_REG_AIDATIM ; 
 int /*<<< orphan*/  MAC_REG_PSCFG ; 
 int /*<<< orphan*/  MAC_REG_PSCTL ; 
 scalar_t__ MAC_REG_PWBT ; 
 int /*<<< orphan*/  MAC_REG_TFTCTL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  PSCFG_AUTOSLEEP ; 
 int /*<<< orphan*/  PSCTL_ALBCN ; 
 int /*<<< orphan*/  PSCTL_LNBCN ; 
 int /*<<< orphan*/  PSCTL_PSEN ; 
 int /*<<< orphan*/  TFTCTL_HWUTSF ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 TYPE_1__* pMgmt ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(struct vnt_private *priv,
			  unsigned short wListenInterval)
{
	u16 wAID = priv->current_aid | FUNC0(14) | FUNC0(15);

	/* set period of power up before TBTT */
	FUNC4(priv->PortOffset + MAC_REG_PWBT, C_PWBT);
	if (priv->op_mode != NL80211_IFTYPE_ADHOC) {
		/* set AID */
		FUNC4(priv->PortOffset + MAC_REG_AIDATIM, wAID);
	} else {
		/* set ATIM Window */
#if 0 /* TODO atim window */
		MACvWriteATIMW(priv->PortOffset, pMgmt->wCurrATIMWindow);
#endif
	}
	/* Set AutoSleep */
	FUNC2(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
	/* Set HWUTSF */
	FUNC2(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);

	if (wListenInterval >= 2) {
		/* clear always listen beacon */
		FUNC1(priv->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);
		/* first time set listen next beacon */
		FUNC2(priv->PortOffset, MAC_REG_PSCTL, PSCTL_LNBCN);
	} else {
		/* always listen beacon */
		FUNC2(priv->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);
	}

	/* enable power saving hw function */
	FUNC2(priv->PortOffset, MAC_REG_PSCTL, PSCTL_PSEN);
	priv->bEnablePSMode = true;

	priv->bPWBitOn = true;
	FUNC5("PS:Power Saving Mode Enable...\n");
}