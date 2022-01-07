
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int sectorsize; } ;


 TYPE_1__* btrfs_sb (int ) ;

__attribute__((used)) static inline u32 btrfs_inode_sectorsize(const struct inode *inode)
{
 return btrfs_sb(inode->i_sb)->sectorsize;
}
