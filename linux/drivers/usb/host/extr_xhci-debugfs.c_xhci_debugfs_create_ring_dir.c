
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_ring {int dummy; } ;
struct xhci_hcd {int dummy; } ;
struct dentry {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct dentry* debugfs_create_dir (char const*,struct dentry*) ;
 int ring_files ;
 int xhci_debugfs_create_files (struct xhci_hcd*,int ,int ,struct xhci_ring**,struct dentry*,int *) ;
 int xhci_ring_fops ;

__attribute__((used)) static struct dentry *xhci_debugfs_create_ring_dir(struct xhci_hcd *xhci,
         struct xhci_ring **ring,
         const char *name,
         struct dentry *parent)
{
 struct dentry *dir;

 dir = debugfs_create_dir(name, parent);
 xhci_debugfs_create_files(xhci, ring_files, ARRAY_SIZE(ring_files),
      ring, dir, &xhci_ring_fops);

 return dir;
}
