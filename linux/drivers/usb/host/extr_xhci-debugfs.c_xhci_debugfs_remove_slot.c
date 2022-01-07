
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_virt_device {struct xhci_slot_priv* debugfs_private; } ;
struct xhci_slot_priv {struct xhci_slot_priv** eps; int root; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (struct xhci_slot_priv*) ;

void xhci_debugfs_remove_slot(struct xhci_hcd *xhci, int slot_id)
{
 int i;
 struct xhci_slot_priv *priv;
 struct xhci_virt_device *dev = xhci->devs[slot_id];

 if (!dev || !dev->debugfs_private)
  return;

 priv = dev->debugfs_private;

 debugfs_remove_recursive(priv->root);

 for (i = 0; i < 31; i++)
  kfree(priv->eps[i]);

 kfree(priv);
 dev->debugfs_private = ((void*)0);
}
