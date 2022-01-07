
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;


 int current ;
 int signal_pending (int ) ;

__attribute__((used)) static inline int btrfs_defrag_cancelled(struct btrfs_fs_info *fs_info)
{
 return signal_pending(current);
}
