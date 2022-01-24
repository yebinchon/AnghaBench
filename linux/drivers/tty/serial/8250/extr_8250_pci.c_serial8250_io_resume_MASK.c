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
struct serial_private {int /*<<< orphan*/  board; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct serial_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct serial_private*) ; 
 struct serial_private* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,struct serial_private*) ; 
 struct serial_private* FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	struct serial_private *priv = FUNC2(dev);
	struct serial_private *new;

	if (!priv)
		return;

	new = FUNC4(dev, priv->board);
	if (!FUNC0(new)) {
		FUNC3(dev, new);
		FUNC1(priv);
	}
}