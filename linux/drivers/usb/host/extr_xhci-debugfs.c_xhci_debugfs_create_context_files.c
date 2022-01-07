
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_virt_device {int debugfs_private; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;
struct dentry {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int context_files ;
 int xhci_context_fops ;
 int xhci_debugfs_create_files (struct xhci_hcd*,int ,int ,int ,struct dentry*,int *) ;

__attribute__((used)) static void xhci_debugfs_create_context_files(struct xhci_hcd *xhci,
           struct dentry *parent,
           int slot_id)
{
 struct xhci_virt_device *dev = xhci->devs[slot_id];

 xhci_debugfs_create_files(xhci, context_files,
      ARRAY_SIZE(context_files),
      dev->debugfs_private,
      parent, &xhci_context_fops);
}
