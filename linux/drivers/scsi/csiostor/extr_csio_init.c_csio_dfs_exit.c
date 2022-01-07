
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int csio_debugfs_root ;
 int debugfs_remove (int ) ;

__attribute__((used)) static void
csio_dfs_exit(void)
{
 debugfs_remove(csio_debugfs_root);
}
