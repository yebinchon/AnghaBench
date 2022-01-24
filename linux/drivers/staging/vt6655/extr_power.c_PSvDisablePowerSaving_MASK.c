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
struct vnt_private {int bEnablePSMode; int bPWBitOn; int /*<<< orphan*/  PortOffset; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_REG_PSCFG ; 
 int /*<<< orphan*/  MAC_REG_PSCTL ; 
 int /*<<< orphan*/  MAC_REG_TFTCTL ; 
 int /*<<< orphan*/  FUNC0 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSCFG_AUTOSLEEP ; 
 int /*<<< orphan*/  PSCTL_ALBCN ; 
 int /*<<< orphan*/  TFTCTL_HWUTSF ; 

void
FUNC3(
	struct vnt_private *priv
)
{
	/* disable power saving hw function */
	FUNC0(priv);
	/* clear AutoSleep */
	FUNC1(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
	/* clear HWUTSF */
	FUNC1(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);
	/* set always listen beacon */
	FUNC2(priv->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);

	priv->bEnablePSMode = false;

	priv->bPWBitOn = false;
}