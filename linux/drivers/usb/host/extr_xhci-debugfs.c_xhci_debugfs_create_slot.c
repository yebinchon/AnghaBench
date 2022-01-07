
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_device {TYPE_1__* eps; struct xhci_slot_priv* debugfs_private; } ;
struct xhci_slot_priv {int root; struct xhci_virt_device* dev; int name; } ;
struct xhci_hcd {int debugfs_slots; struct xhci_virt_device** devs; } ;
struct TYPE_2__ {int ring; } ;


 int GFP_KERNEL ;
 int debugfs_create_dir (int ,int ) ;
 struct xhci_slot_priv* kzalloc (int,int ) ;
 int snprintf (int ,int,char*,int) ;
 int xhci_debugfs_create_context_files (struct xhci_hcd*,int ,int) ;
 int xhci_debugfs_create_ring_dir (struct xhci_hcd*,int *,char*,int ) ;

void xhci_debugfs_create_slot(struct xhci_hcd *xhci, int slot_id)
{
 struct xhci_slot_priv *priv;
 struct xhci_virt_device *dev = xhci->devs[slot_id];

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return;

 snprintf(priv->name, sizeof(priv->name), "%02d", slot_id);
 priv->root = debugfs_create_dir(priv->name, xhci->debugfs_slots);
 priv->dev = dev;
 dev->debugfs_private = priv;

 xhci_debugfs_create_ring_dir(xhci, &dev->eps[0].ring,
         "ep00", priv->root);

 xhci_debugfs_create_context_files(xhci, priv->root, slot_id);
}
