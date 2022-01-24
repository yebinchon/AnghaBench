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
typedef  int u32 ;
struct r8192_priv {scalar_t__ Rf_Mode; int /*<<< orphan*/  rf_mutex; int /*<<< orphan*/  being_init_adapter; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
typedef  enum rf90_radio_path { ____Placeholder_rf90_radio_path } rf90_radio_path ;
struct TYPE_2__ {scalar_t__ eRFPowerState; } ;

/* Variables and functions */
 scalar_t__ RF_OP_By_FW ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct net_device*,int,int) ; 
 int FUNC2 (struct net_device*,int,int) ; 
 scalar_t__ eRfOn ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 struct r8192_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

u32 FUNC8(struct net_device *dev, enum rf90_radio_path eRFPath,
		      u32 RegAddr, u32 BitMask)
{
	u32 Original_Value, Readback_Value, BitShift;
	struct r8192_priv *priv = FUNC6(dev);

	if (!FUNC5(dev, eRFPath))
		return 0;
	if (priv->rtllib->eRFPowerState != eRfOn && !priv->being_init_adapter)
		return	0;
	FUNC3(&priv->rf_mutex);
	if (priv->Rf_Mode == RF_OP_By_FW) {
		Original_Value = FUNC1(dev, eRFPath, RegAddr);
		FUNC7(200);
	} else {
		Original_Value = FUNC2(dev, eRFPath, RegAddr);
	}
	BitShift =  FUNC0(BitMask);
	Readback_Value = (Original_Value & BitMask) >> BitShift;
	FUNC4(&priv->rf_mutex);
	return Readback_Value;
}