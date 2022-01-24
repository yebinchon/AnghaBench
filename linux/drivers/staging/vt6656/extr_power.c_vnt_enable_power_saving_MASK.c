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
struct vnt_private {int current_aid; scalar_t__ op_mode; TYPE_1__* usb; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int C_PWBT ; 
 int /*<<< orphan*/  MAC_REG_AIDATIM ; 
 int /*<<< orphan*/  MAC_REG_PSCFG ; 
 int /*<<< orphan*/  MAC_REG_PSCTL ; 
 int /*<<< orphan*/  MAC_REG_PWBT ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  PSCFG_AUTOSLEEP ; 
 int /*<<< orphan*/  PSCTL_ALBCN ; 
 int /*<<< orphan*/  PSCTL_GO2DOZE ; 
 int /*<<< orphan*/  PSCTL_LNBCN ; 
 int /*<<< orphan*/  PSCTL_PSEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct vnt_private *priv, u16 listen_interval)
{
	u16 aid = priv->current_aid | FUNC0(14) | FUNC0(15);

	/* set period of power up before TBTT */
	FUNC4(priv, MAC_REG_PWBT, C_PWBT);

	if (priv->op_mode != NL80211_IFTYPE_ADHOC)
		/* set AID */
		FUNC4(priv, MAC_REG_AIDATIM, aid);

	/* Warren:06-18-2004,the sequence must follow
	 * PSEN->AUTOSLEEP->GO2DOZE
	 */
	/* enable power saving hw function */
	FUNC3(priv, MAC_REG_PSCTL, PSCTL_PSEN);

	/* Set AutoSleep */
	FUNC3(priv, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);

	/* Warren:MUST turn on this once before turn on AUTOSLEEP ,or the
	 * AUTOSLEEP doesn't work
	 */
	FUNC3(priv, MAC_REG_PSCTL, PSCTL_GO2DOZE);

	if (listen_interval >= 2) {
		/* clear always listen beacon */
		FUNC2(priv, MAC_REG_PSCTL, PSCTL_ALBCN);

		/* first time set listen next beacon */
		FUNC3(priv, MAC_REG_PSCTL, PSCTL_LNBCN);
	} else {
		/* always listen beacon */
		FUNC3(priv, MAC_REG_PSCTL, PSCTL_ALBCN);
	}

	FUNC1(&priv->usb->dev,  "PS:Power Saving Mode Enable...\n");
}