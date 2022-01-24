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
struct r8192_priv {scalar_t__ Rf_Mode; int /*<<< orphan*/  being_init_adapter; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
typedef  enum rf90_radio_path { ____Placeholder_rf90_radio_path } rf90_radio_path ;
struct TYPE_2__ {scalar_t__ eRFPowerState; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_PHY ; 
 scalar_t__ RF_OP_By_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int,int) ; 
 int FUNC4 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,int,int) ; 
 int bMask12Bits ; 
 scalar_t__ eRfOn ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 struct r8192_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(struct net_device *dev, enum rf90_radio_path eRFPath,
		       u32 RegAddr, u32 BitMask, u32 Data)
{
	struct r8192_priv *priv = FUNC7(dev);
	u32 Original_Value, BitShift, New_Value;

	if (!FUNC6(dev, eRFPath))
		return;
	if (priv->rtllib->eRFPowerState != eRfOn && !priv->being_init_adapter)
		return;

	FUNC0(COMP_PHY, "FW RF CTRL is not ready now\n");
	if (priv->Rf_Mode == RF_OP_By_FW) {
		if (BitMask != bMask12Bits) {
			Original_Value = FUNC2(dev, eRFPath,
								RegAddr);
			BitShift =  FUNC1(BitMask);
			New_Value = (Original_Value & ~BitMask) | (Data << BitShift);

			FUNC3(dev, eRFPath, RegAddr,
						New_Value);
		} else
			FUNC3(dev, eRFPath, RegAddr, Data);
		FUNC8(200);

	} else {
		if (BitMask != bMask12Bits) {
			Original_Value = FUNC4(dev, eRFPath,
							     RegAddr);
			BitShift =  FUNC1(BitMask);
			New_Value = (Original_Value & ~BitMask) | (Data << BitShift);

			FUNC5(dev, eRFPath, RegAddr, New_Value);
		} else
			FUNC5(dev, eRFPath, RegAddr, Data);
	}
}