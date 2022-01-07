
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;


 int btrfs_header_flags (struct extent_buffer*) ;
 int btrfs_set_header_flags (struct extent_buffer*,int) ;

__attribute__((used)) static inline void btrfs_clear_header_flag(struct extent_buffer *eb, u64 flag)
{
 u64 flags = btrfs_header_flags(eb);
 btrfs_set_header_flags(eb, flags & ~flag);
}
