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
typedef  int u32 ;
struct r8192_priv {scalar_t__ Rf_Mode; } ;
struct net_device {int dummy; } ;
typedef  enum rf90_radio_path_e { ____Placeholder_rf90_radio_path_e } rf90_radio_path_e ;

/* Variables and functions */
 scalar_t__ RF_OP_By_FW ; 
 int bMask12Bits ; 
 int FUNC0 (int) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int FUNC5 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(struct net_device *dev,
			  enum rf90_radio_path_e e_rfpath,
			  u32 reg_addr, u32 bitmask, u32 data)
{
	struct r8192_priv *priv = FUNC1(dev);
	u32 reg, bitshift;

	if (!FUNC4(dev, e_rfpath))
		return;

	if (priv->Rf_Mode == RF_OP_By_FW) {
		if (bitmask != bMask12Bits) {
			/* RF data is 12 bits only */
			reg = FUNC2(dev, e_rfpath, reg_addr);
			bitshift =  FUNC0(bitmask) - 1;
			reg &= ~bitmask;
			reg |= data << bitshift;

			FUNC3(dev, e_rfpath, reg_addr, reg);
		} else {
			FUNC3(dev, e_rfpath, reg_addr, data);
		}

		FUNC7(200);

	} else {
		if (bitmask != bMask12Bits) {
			/* RF data is 12 bits only */
			reg = FUNC5(dev, e_rfpath, reg_addr);
			bitshift =  FUNC0(bitmask) - 1;
			reg &= ~bitmask;
			reg |= data << bitshift;

			FUNC6(dev, e_rfpath, reg_addr, reg);
		} else {
			FUNC6(dev, e_rfpath, reg_addr, data);
		}
	}
}