
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;


 int BTRFS_BACKREF_REV_MASK ;
 int BTRFS_BACKREF_REV_SHIFT ;
 int btrfs_header_flags (struct extent_buffer*) ;
 int btrfs_set_header_flags (struct extent_buffer*,int) ;

__attribute__((used)) static inline void btrfs_set_header_backref_rev(struct extent_buffer *eb,
      int rev)
{
 u64 flags = btrfs_header_flags(eb);
 flags &= ~BTRFS_BACKREF_REV_MASK;
 flags |= (u64)rev << BTRFS_BACKREF_REV_SHIFT;
 btrfs_set_header_flags(eb, flags);
}
