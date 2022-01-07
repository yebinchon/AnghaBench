
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;


 int BTRFS_BACKREF_REV_SHIFT ;
 int btrfs_header_flags (struct extent_buffer const*) ;

__attribute__((used)) static inline int btrfs_header_backref_rev(const struct extent_buffer *eb)
{
 u64 flags = btrfs_header_flags(eb);
 return flags >> BTRFS_BACKREF_REV_SHIFT;
}
