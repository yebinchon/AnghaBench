
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_hcd {int debug_dir; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static inline void remove_debug_files (struct ohci_hcd *ohci)
{
 debugfs_remove_recursive(ohci->debug_dir);
}
