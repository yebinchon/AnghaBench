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
typedef  int u32 ;
struct r8192_priv {TYPE_2__* rtllib; scalar_t__ polling_timer_on; int /*<<< orphan*/  gpio_change_rf_wq; int /*<<< orphan*/  gpio_polling_timer; } ;
struct pci_dev {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_4__ {scalar_t__ bSupportRemoteWakeUp; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* ndo_stop ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_GEN ; 
 int CPU_GEN_SYSTEM_RESET ; 
 int /*<<< orphan*/  MacBlkCtrl ; 
 int /*<<< orphan*/  PMR ; 
 int /*<<< orphan*/  RF_CHANGE_BY_INIT ; 
 int /*<<< orphan*/  WFCRC0 ; 
 int /*<<< orphan*/  WFCRC1 ; 
 int /*<<< orphan*/  WFCRC2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eRfOff ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct net_device* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 struct r8192_priv* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 

int FUNC18(struct pci_dev *pdev, pm_message_t state)
{
	struct net_device *dev = FUNC9(pdev);
	struct r8192_priv *priv = FUNC16(dev);
	u32	ulRegRead;

	FUNC3(dev, "============> r8192E suspend call.\n");
	FUNC1(&priv->gpio_polling_timer);
	FUNC0(&priv->gpio_change_rf_wq);
	priv->polling_timer_on = 0;

	if (!FUNC5(dev)) {
		FUNC3(dev,
			    "RTL819XE:UI is open out of suspend function\n");
		goto out_pci_suspend;
	}

	if (dev->netdev_ops->ndo_stop)
		dev->netdev_ops->ndo_stop(dev);
	FUNC4(dev);

	if (!priv->rtllib->bSupportRemoteWakeUp) {
		FUNC13(dev, eRfOff, RF_CHANGE_BY_INIT);
		ulRegRead = FUNC12(dev, CPU_GEN);
		ulRegRead |= CPU_GEN_SYSTEM_RESET;
		FUNC15(dev, CPU_GEN, ulRegRead);
	} else {
		FUNC15(dev, WFCRC0, 0xffffffff);
		FUNC15(dev, WFCRC1, 0xffffffff);
		FUNC15(dev, WFCRC2, 0xffffffff);
		FUNC14(dev, PMR, 0x5);
		FUNC14(dev, MacBlkCtrl, 0xa);
	}
out_pci_suspend:
	FUNC3(dev, "WOL is %s\n", priv->rtllib->bSupportRemoteWakeUp ?
			    "Supported" : "Not supported");
	FUNC10(pdev);
	FUNC7(pdev);
	FUNC8(pdev, FUNC6(pdev, state),
			priv->rtllib->bSupportRemoteWakeUp ? 1 : 0);
	FUNC11(pdev, FUNC6(pdev, state));

	FUNC2(20);

	return 0;
}