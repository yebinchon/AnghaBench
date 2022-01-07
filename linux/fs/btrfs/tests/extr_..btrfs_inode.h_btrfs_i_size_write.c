
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_inode {int disk_i_size; int vfs_inode; } ;


 int i_size_write (int *,int ) ;

__attribute__((used)) static inline void btrfs_i_size_write(struct btrfs_inode *inode, u64 size)
{
 i_size_write(&inode->vfs_inode, size);
 inode->disk_i_size = size;
}
