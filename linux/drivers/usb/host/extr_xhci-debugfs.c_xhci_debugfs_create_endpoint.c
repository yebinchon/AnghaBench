
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_device {TYPE_1__* eps; struct xhci_slot_priv* debugfs_private; } ;
struct xhci_slot_priv {struct xhci_ep_priv** eps; int root; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_ep_priv {int name; int root; } ;
struct TYPE_2__ {int ring; } ;


 int GFP_KERNEL ;
 struct xhci_ep_priv* kzalloc (int,int ) ;
 int snprintf (int ,int,char*,int) ;
 int xhci_debugfs_create_ring_dir (struct xhci_hcd*,int *,int ,int ) ;

void xhci_debugfs_create_endpoint(struct xhci_hcd *xhci,
      struct xhci_virt_device *dev,
      int ep_index)
{
 struct xhci_ep_priv *epriv;
 struct xhci_slot_priv *spriv = dev->debugfs_private;

 if (!spriv)
  return;

 if (spriv->eps[ep_index])
  return;

 epriv = kzalloc(sizeof(*epriv), GFP_KERNEL);
 if (!epriv)
  return;

 snprintf(epriv->name, sizeof(epriv->name), "ep%02d", ep_index);
 epriv->root = xhci_debugfs_create_ring_dir(xhci,
         &dev->eps[ep_index].ring,
         epriv->name,
         spriv->root);
 spriv->eps[ep_index] = epriv;
}
