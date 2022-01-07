
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_chunk {int dummy; } ;


 int btrfs_chunk_length (struct extent_buffer*,struct btrfs_chunk*) ;
 int btrfs_chunk_num_stripes (struct extent_buffer*,struct btrfs_chunk*) ;
 int btrfs_chunk_owner (struct extent_buffer*,struct btrfs_chunk*) ;
 int btrfs_chunk_type (struct extent_buffer*,struct btrfs_chunk*) ;
 int btrfs_stripe_devid_nr (struct extent_buffer*,struct btrfs_chunk*,int) ;
 int btrfs_stripe_offset_nr (struct extent_buffer*,struct btrfs_chunk*,int) ;
 int pr_info (char*,int,int ,int ,...) ;

__attribute__((used)) static void print_chunk(struct extent_buffer *eb, struct btrfs_chunk *chunk)
{
 int num_stripes = btrfs_chunk_num_stripes(eb, chunk);
 int i;
 pr_info("\t\tchunk length %llu owner %llu type %llu num_stripes %d\n",
        btrfs_chunk_length(eb, chunk), btrfs_chunk_owner(eb, chunk),
        btrfs_chunk_type(eb, chunk), num_stripes);
 for (i = 0 ; i < num_stripes ; i++) {
  pr_info("\t\t\tstripe %d devid %llu offset %llu\n", i,
        btrfs_stripe_devid_nr(eb, chunk, i),
        btrfs_stripe_offset_nr(eb, chunk, i));
 }
}
