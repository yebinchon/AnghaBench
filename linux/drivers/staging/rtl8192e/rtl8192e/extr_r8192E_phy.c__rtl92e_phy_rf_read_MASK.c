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
struct r8192_priv {scalar_t__ rf_chip; int* RfReg0Value; struct bb_reg_definition* PHYRegDef; } ;
struct net_device {int dummy; } ;
struct bb_reg_definition {int /*<<< orphan*/  rf3wireOffset; int /*<<< orphan*/  rfLSSIReadBack; int /*<<< orphan*/  rfHSSIPara2; } ;
typedef  enum rf90_radio_path { ____Placeholder_rf90_radio_path } rf90_radio_path ;

/* Variables and functions */
 int COMP_ERR ; 
 int COMP_PHY ; 
 scalar_t__ RF_8256 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int bLSSIReadAddress ; 
 int /*<<< orphan*/  bLSSIReadBackData ; 
 int bLSSIReadEdge ; 
 int bMaskDWord ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  rFPGA0_AnalogParameter4 ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int,int) ; 
 struct r8192_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC5(struct net_device *dev,
			       enum rf90_radio_path eRFPath, u32 Offset)
{
	struct r8192_priv *priv = FUNC4(dev);
	u32 ret = 0;
	u32 NewOffset = 0;
	struct bb_reg_definition *pPhyReg = &priv->PHYRegDef[eRFPath];

	Offset &= 0x3f;

	if (priv->rf_chip == RF_8256) {
		FUNC3(dev, rFPGA0_AnalogParameter4, 0xf00, 0x0);
		if (Offset >= 31) {
			priv->RfReg0Value[eRFPath] |= 0x140;
			FUNC3(dev, pPhyReg->rf3wireOffset,
					  bMaskDWord,
					  (priv->RfReg0Value[eRFPath]<<16));
			NewOffset = Offset - 30;
		} else if (Offset >= 16) {
			priv->RfReg0Value[eRFPath] |= 0x100;
			priv->RfReg0Value[eRFPath] &= (~0x40);
			FUNC3(dev, pPhyReg->rf3wireOffset,
					  bMaskDWord,
					  (priv->RfReg0Value[eRFPath]<<16));

			NewOffset = Offset - 15;
		} else
			NewOffset = Offset;
	} else {
		FUNC0((COMP_PHY|COMP_ERR),
			 "check RF type here, need to be 8256\n");
		NewOffset = Offset;
	}
	FUNC3(dev, pPhyReg->rfHSSIPara2, bLSSIReadAddress,
			  NewOffset);
	FUNC3(dev, pPhyReg->rfHSSIPara2,  bLSSIReadEdge, 0x0);
	FUNC3(dev, pPhyReg->rfHSSIPara2,  bLSSIReadEdge, 0x1);

	FUNC1(1);

	ret = FUNC2(dev, pPhyReg->rfLSSIReadBack,
				bLSSIReadBackData);

	if (priv->rf_chip == RF_8256) {
		priv->RfReg0Value[eRFPath] &= 0xebf;

		FUNC3(dev, pPhyReg->rf3wireOffset, bMaskDWord,
				  (priv->RfReg0Value[eRFPath] << 16));

		FUNC3(dev, rFPGA0_AnalogParameter4, 0x300, 0x3);
	}


	return ret;

}