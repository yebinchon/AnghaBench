
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_bus {int bus_name; } ;
struct ohci_hcd {struct dentry* debug_dir; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct usb_bus self; } ;


 int S_IRUGO ;
 int debug_async_fops ;
 int debug_periodic_fops ;
 int debug_registers_fops ;
 struct dentry* debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int ,struct dentry*,struct ohci_hcd*,int *) ;
 int ohci_dbg (struct ohci_hcd*,char*) ;
 int ohci_debug_root ;
 TYPE_1__* ohci_to_hcd (struct ohci_hcd*) ;

__attribute__((used)) static inline void create_debug_files (struct ohci_hcd *ohci)
{
 struct usb_bus *bus = &ohci_to_hcd(ohci)->self;
 struct dentry *root;

 root = debugfs_create_dir(bus->bus_name, ohci_debug_root);
 ohci->debug_dir = root;

 debugfs_create_file("async", S_IRUGO, root, ohci, &debug_async_fops);
 debugfs_create_file("periodic", S_IRUGO, root, ohci,
       &debug_periodic_fops);
 debugfs_create_file("registers", S_IRUGO, root, ohci,
       &debug_registers_fops);

 ohci_dbg (ohci, "created debug files\n");
}
