
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_virt_device {struct xhci_slot_priv* debugfs_private; } ;
struct xhci_slot_priv {struct xhci_ep_priv** eps; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_ep_priv {int root; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (struct xhci_ep_priv*) ;

void xhci_debugfs_remove_endpoint(struct xhci_hcd *xhci,
      struct xhci_virt_device *dev,
      int ep_index)
{
 struct xhci_ep_priv *epriv;
 struct xhci_slot_priv *spriv = dev->debugfs_private;

 if (!spriv || !spriv->eps[ep_index])
  return;

 epriv = spriv->eps[ep_index];
 debugfs_remove_recursive(epriv->root);
 spriv->eps[ep_index] = ((void*)0);
 kfree(epriv);
}
