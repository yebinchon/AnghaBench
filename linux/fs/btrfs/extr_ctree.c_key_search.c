
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_key {int dummy; } ;


 int btrfs_bin_search (struct extent_buffer*,struct btrfs_key const*,int,int*) ;

__attribute__((used)) static int key_search(struct extent_buffer *b, const struct btrfs_key *key,
        int level, int *prev_cmp, int *slot)
{
 if (*prev_cmp != 0) {
  *prev_cmp = btrfs_bin_search(b, key, level, slot);
  return *prev_cmp;
 }

 *slot = 0;

 return 0;
}
