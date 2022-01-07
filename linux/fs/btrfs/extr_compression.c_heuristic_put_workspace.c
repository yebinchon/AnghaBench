
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int btrfs_put_workspace (int *,struct list_head*) ;
 int heuristic_wsm ;

__attribute__((used)) static void heuristic_put_workspace(struct list_head *ws)
{
 btrfs_put_workspace(&heuristic_wsm, ws);
}
