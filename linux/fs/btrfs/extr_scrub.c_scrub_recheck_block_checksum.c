
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scrub_block {TYPE_1__** pagev; scalar_t__ generation_error; scalar_t__ checksum_error; scalar_t__ header_error; } ;
struct TYPE_2__ {int flags; } ;


 int BTRFS_EXTENT_FLAG_DATA ;
 int scrub_checksum_data (struct scrub_block*) ;
 int scrub_checksum_tree_block (struct scrub_block*) ;

__attribute__((used)) static void scrub_recheck_block_checksum(struct scrub_block *sblock)
{
 sblock->header_error = 0;
 sblock->checksum_error = 0;
 sblock->generation_error = 0;

 if (sblock->pagev[0]->flags & BTRFS_EXTENT_FLAG_DATA)
  scrub_checksum_data(sblock);
 else
  scrub_checksum_tree_block(sblock);
}
