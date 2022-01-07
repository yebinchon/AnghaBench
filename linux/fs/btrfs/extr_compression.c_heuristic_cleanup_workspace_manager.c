
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btrfs_cleanup_workspace_manager (int *) ;
 int heuristic_wsm ;

__attribute__((used)) static void heuristic_cleanup_workspace_manager(void)
{
 btrfs_cleanup_workspace_manager(&heuristic_wsm);
}
