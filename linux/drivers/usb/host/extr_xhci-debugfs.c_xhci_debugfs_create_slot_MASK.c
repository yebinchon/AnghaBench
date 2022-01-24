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
struct xhci_virt_device {TYPE_1__* eps; struct xhci_slot_priv* debugfs_private; } ;
struct xhci_slot_priv {int /*<<< orphan*/  root; struct xhci_virt_device* dev; int /*<<< orphan*/  name; } ;
struct xhci_hcd {int /*<<< orphan*/  debugfs_slots; struct xhci_virt_device** devs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xhci_slot_priv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_hcd*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct xhci_hcd *xhci, int slot_id)
{
	struct xhci_slot_priv	*priv;
	struct xhci_virt_device	*dev = xhci->devs[slot_id];

	priv = FUNC1(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return;

	FUNC2(priv->name, sizeof(priv->name), "%02d", slot_id);
	priv->root = FUNC0(priv->name, xhci->debugfs_slots);
	priv->dev = dev;
	dev->debugfs_private = priv;

	FUNC4(xhci, &dev->eps[0].ring,
				     "ep00", priv->root);

	FUNC3(xhci, priv->root, slot_id);
}