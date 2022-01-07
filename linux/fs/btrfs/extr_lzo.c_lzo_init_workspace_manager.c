
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btrfs_init_workspace_manager (int *,int *) ;
 int btrfs_lzo_compress ;
 int wsm ;

__attribute__((used)) static void lzo_init_workspace_manager(void)
{
 btrfs_init_workspace_manager(&wsm, &btrfs_lzo_compress);
}
