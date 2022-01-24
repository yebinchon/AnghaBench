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
struct r8192_priv {int txpower_count; int /*<<< orphan*/  txpower_tracking_wq; int /*<<< orphan*/  btxpower_tracking; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  bMask12Bits ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct r8192_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC3(dev);
	static u8	TM_Trigger;
	u8		TxPowerCheckCnt = 0;

	if (FUNC0(dev))
		TxPowerCheckCnt = 5;
	else
		TxPowerCheckCnt = 2;
	if (!priv->btxpower_tracking)
		return;

	if (priv->txpower_count  <= TxPowerCheckCnt) {
		priv->txpower_count++;
		return;
	}

	if (!TM_Trigger) {
		FUNC2(dev, RF90_PATH_A, 0x02, bMask12Bits, 0x4d);
		FUNC2(dev, RF90_PATH_A, 0x02, bMask12Bits, 0x4f);
		FUNC2(dev, RF90_PATH_A, 0x02, bMask12Bits, 0x4d);
		FUNC2(dev, RF90_PATH_A, 0x02, bMask12Bits, 0x4f);
		TM_Trigger = 1;
		return;
	}
	FUNC1(dev, "===============>Schedule TxPowerTrackingWorkItem\n");
	FUNC4(&priv->txpower_tracking_wq, 0);
	TM_Trigger = 0;

}