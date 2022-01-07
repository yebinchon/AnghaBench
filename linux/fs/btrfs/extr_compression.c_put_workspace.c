
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {void (* put_workspace ) (struct list_head*) ;} ;


 TYPE_1__** btrfs_compress_op ;
 void stub1 (struct list_head*) ;

__attribute__((used)) static void put_workspace(int type, struct list_head *ws)
{
 return btrfs_compress_op[type]->put_workspace(ws);
}
