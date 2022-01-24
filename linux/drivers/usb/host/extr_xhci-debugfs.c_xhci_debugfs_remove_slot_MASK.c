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
struct xhci_virt_device {struct xhci_slot_priv* debugfs_private; } ;
struct xhci_slot_priv {struct xhci_slot_priv** eps; int /*<<< orphan*/  root; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_slot_priv*) ; 

void FUNC2(struct xhci_hcd *xhci, int slot_id)
{
	int			i;
	struct xhci_slot_priv	*priv;
	struct xhci_virt_device	*dev = xhci->devs[slot_id];

	if (!dev || !dev->debugfs_private)
		return;

	priv = dev->debugfs_private;

	FUNC0(priv->root);

	for (i = 0; i < 31; i++)
		FUNC1(priv->eps[i]);

	FUNC1(priv);
	dev->debugfs_private = NULL;
}