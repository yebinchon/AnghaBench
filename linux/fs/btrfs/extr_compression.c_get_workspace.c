
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head* (* get_workspace ) (int) ;} ;


 TYPE_1__** btrfs_compress_op ;
 struct list_head* stub1 (int) ;

__attribute__((used)) static struct list_head *get_workspace(int type, int level)
{
 return btrfs_compress_op[type]->get_workspace(level);
}
