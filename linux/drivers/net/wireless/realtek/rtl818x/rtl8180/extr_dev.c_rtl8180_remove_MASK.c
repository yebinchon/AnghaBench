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
struct rtl8180_priv {int /*<<< orphan*/  map; } ;
struct pci_dev {int dummy; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct ieee80211_hw* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct ieee80211_hw *dev = FUNC3(pdev);
	struct rtl8180_priv *priv;

	if (!dev)
		return;

	FUNC1(dev);

	priv = dev->priv;

	FUNC4(pdev, priv->map);
	FUNC5(pdev);
	FUNC2(pdev);
	FUNC0(dev);
}