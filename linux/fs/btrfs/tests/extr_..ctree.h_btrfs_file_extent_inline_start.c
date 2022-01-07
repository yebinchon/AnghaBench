
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_file_extent_item {int dummy; } ;


 unsigned long BTRFS_FILE_EXTENT_INLINE_DATA_START ;

__attribute__((used)) static inline unsigned long
btrfs_file_extent_inline_start(const struct btrfs_file_extent_item *e)
{
 return (unsigned long)e + BTRFS_FILE_EXTENT_INLINE_DATA_START;
}
