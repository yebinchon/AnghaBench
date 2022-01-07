
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct btrfs_free_space_ctl {unsigned long unit; } ;
struct btrfs_free_space {unsigned long offset; unsigned long bytes; int bitmap; } ;


 int BITS_PER_BITMAP ;
 int __bitmap_clear_bits (struct btrfs_free_space_ctl*,struct btrfs_free_space*,unsigned long const,unsigned long) ;
 int bitmap_clear_bits (struct btrfs_free_space_ctl*,struct btrfs_free_space*,unsigned long const,unsigned long) ;
 unsigned long find_next_zero_bit (int ,int ,unsigned long) ;
 int free_bitmap (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ;
 unsigned long offset_to_bit (unsigned long,unsigned long,unsigned long const) ;
 unsigned long offset_to_bitmap (struct btrfs_free_space_ctl*,unsigned long const) ;
 struct btrfs_free_space* tree_search_offset (struct btrfs_free_space_ctl*,unsigned long const,int,int ) ;

__attribute__((used)) static bool steal_from_bitmap_to_end(struct btrfs_free_space_ctl *ctl,
         struct btrfs_free_space *info,
         bool update_stat)
{
 struct btrfs_free_space *bitmap;
 unsigned long i;
 unsigned long j;
 const u64 end = info->offset + info->bytes;
 const u64 bitmap_offset = offset_to_bitmap(ctl, end);
 u64 bytes;

 bitmap = tree_search_offset(ctl, bitmap_offset, 1, 0);
 if (!bitmap)
  return 0;

 i = offset_to_bit(bitmap->offset, ctl->unit, end);
 j = find_next_zero_bit(bitmap->bitmap, BITS_PER_BITMAP, i);
 if (j == i)
  return 0;
 bytes = (j - i) * ctl->unit;
 info->bytes += bytes;

 if (update_stat)
  bitmap_clear_bits(ctl, bitmap, end, bytes);
 else
  __bitmap_clear_bits(ctl, bitmap, end, bytes);

 if (!bitmap->bytes)
  free_bitmap(ctl, bitmap);

 return 1;
}
