
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 struct list_head fs_uuids ;

struct list_head *btrfs_get_fs_uuids(void)
{
 return &fs_uuids;
}
