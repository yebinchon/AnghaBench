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
struct r8192_priv {int /*<<< orphan*/  SifsTime; void* framesync; void* framesyncC34; void** DefaultInitialGain; void** MCSTxPowerLevelOriginalOffset; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,...) ; 
 int /*<<< orphan*/  SIFS ; 
 int /*<<< orphan*/  rOFDM0_RxDetector2 ; 
 int /*<<< orphan*/  rOFDM0_RxDetector3 ; 
 int /*<<< orphan*/  rOFDM0_XAAGCCore1 ; 
 int /*<<< orphan*/  rOFDM0_XBAGCCore1 ; 
 int /*<<< orphan*/  rOFDM0_XCAGCCore1 ; 
 int /*<<< orphan*/  rOFDM0_XDAGCCore1 ; 
 int /*<<< orphan*/  rTxAGC_Mcs03_Mcs00 ; 
 int /*<<< orphan*/  rTxAGC_Mcs07_Mcs04 ; 
 int /*<<< orphan*/  rTxAGC_Mcs11_Mcs08 ; 
 int /*<<< orphan*/  rTxAGC_Mcs15_Mcs12 ; 
 int /*<<< orphan*/  rTxAGC_Rate18_06 ; 
 int /*<<< orphan*/  rTxAGC_Rate54_24 ; 
 void* FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct r8192_priv* FUNC4 (struct net_device*) ; 

void FUNC5(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC4(dev);

	priv->MCSTxPowerLevelOriginalOffset[0] =
		FUNC2(dev, rTxAGC_Rate18_06);
	priv->MCSTxPowerLevelOriginalOffset[1] =
		FUNC2(dev, rTxAGC_Rate54_24);
	priv->MCSTxPowerLevelOriginalOffset[2] =
		FUNC2(dev, rTxAGC_Mcs03_Mcs00);
	priv->MCSTxPowerLevelOriginalOffset[3] =
		FUNC2(dev, rTxAGC_Mcs07_Mcs04);
	priv->MCSTxPowerLevelOriginalOffset[4] =
		FUNC2(dev, rTxAGC_Mcs11_Mcs08);
	priv->MCSTxPowerLevelOriginalOffset[5] =
		FUNC2(dev, rTxAGC_Mcs15_Mcs12);

	priv->DefaultInitialGain[0] = FUNC1(dev, rOFDM0_XAAGCCore1);
	priv->DefaultInitialGain[1] = FUNC1(dev, rOFDM0_XBAGCCore1);
	priv->DefaultInitialGain[2] = FUNC1(dev, rOFDM0_XCAGCCore1);
	priv->DefaultInitialGain[3] = FUNC1(dev, rOFDM0_XDAGCCore1);
	FUNC0(COMP_INIT,
		 "Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x)\n",
		 priv->DefaultInitialGain[0], priv->DefaultInitialGain[1],
		 priv->DefaultInitialGain[2], priv->DefaultInitialGain[3]);

	priv->framesync = FUNC1(dev, rOFDM0_RxDetector3);
	priv->framesyncC34 = FUNC2(dev, rOFDM0_RxDetector2);
	FUNC0(COMP_INIT, "Default framesync (0x%x) = 0x%x\n",
		rOFDM0_RxDetector3, priv->framesync);
	priv->SifsTime = FUNC3(dev, SIFS);
}