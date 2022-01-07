
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KBUILD_MODNAME ;
 int csio_debugfs_root ;
 int debugfs_create_dir (int ,int *) ;

__attribute__((used)) static void
csio_dfs_init(void)
{
 csio_debugfs_root = debugfs_create_dir(KBUILD_MODNAME, ((void*)0));
}
