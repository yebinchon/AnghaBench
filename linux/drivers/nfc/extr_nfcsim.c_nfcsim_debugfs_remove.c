
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int nfcsim_debugfs_root ;

__attribute__((used)) static void nfcsim_debugfs_remove(void)
{
 debugfs_remove_recursive(nfcsim_debugfs_root);
}
