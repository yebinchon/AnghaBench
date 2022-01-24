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
struct r8192_priv {scalar_t__ polling_timer_on; TYPE_2__* rtllib; int /*<<< orphan*/  gpio_polling_timer; } ;
struct pci_dev {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  bSupportRemoteWakeUp; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* ndo_open ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_POWER ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  RF_CHANGE_BY_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  eRfOn ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct r8192_priv* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 

int FUNC16(struct pci_dev *pdev)
{
	struct net_device *dev = FUNC7(pdev);
	struct r8192_priv *priv = FUNC14(dev);
	int err;
	u32 val;

	FUNC2(dev, "================>r8192E resume call.\n");

	FUNC10(pdev, PCI_D0);

	err = FUNC5(pdev);
	if (err) {
		FUNC1(dev, "pci_enable_device failed on resume\n");
		return err;
	}
	FUNC9(pdev);

	FUNC8(pdev, 0x40, &val);
	if ((val & 0x0000ff00) != 0)
		FUNC11(pdev, 0x40, val & 0xffff00ff);

	FUNC6(pdev, PCI_D0, 0);

	if (priv->polling_timer_on == 0)
		FUNC12(&priv->gpio_polling_timer);

	if (!FUNC4(dev)) {
		FUNC2(dev,
			    "RTL819XE:UI is open out of resume function\n");
		goto out;
	}

	FUNC3(dev);
	if (dev->netdev_ops->ndo_open)
		dev->netdev_ops->ndo_open(dev);

	if (!priv->rtllib->bSupportRemoteWakeUp)
		FUNC13(dev, eRfOn, RF_CHANGE_BY_INIT);

out:
	FUNC0(COMP_POWER, "<================r8192E resume call.\n");
	return 0;
}