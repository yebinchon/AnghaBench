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
typedef  int /*<<< orphan*/  u16 ;
struct r8192_priv {int /*<<< orphan*/  pdev; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int BIT4 ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev,
					    struct net_device *dev)
{
	struct r8192_priv *priv = (struct r8192_priv *)FUNC4(dev);

	u8 tmp;
	u16 LinkCtrlReg;

	FUNC3(priv->pdev, PCI_EXP_LNKCTL, &LinkCtrlReg);

	FUNC0(COMP_INIT, "Link Control Register =%x\n", LinkCtrlReg);

	FUNC1(pdev, 0x98, &tmp);
	tmp |= BIT4;
	FUNC2(pdev, 0x98, tmp);

	tmp = 0x17;
	FUNC2(pdev, 0x70f, tmp);
}