
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; } ;


 int GOLDEN_RATIO_PRIME ;

__attribute__((used)) static inline unsigned long btrfs_inode_hash(u64 objectid,
          const struct btrfs_root *root)
{
 u64 h = objectid ^ (root->root_key.objectid * GOLDEN_RATIO_PRIME);





 return (unsigned long)h;
}
