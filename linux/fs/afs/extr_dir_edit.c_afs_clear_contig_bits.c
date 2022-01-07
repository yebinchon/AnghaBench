
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bitmap; } ;
union afs_xdr_dir_block {TYPE_1__ hdr; } ;
typedef int u8 ;
typedef int u64 ;



__attribute__((used)) static void afs_clear_contig_bits(union afs_xdr_dir_block *block,
      int bit, unsigned int nr_slots)
{
 u64 mask, before, after;

 mask = (1 << nr_slots) - 1;
 mask <<= bit;

 before = *(u64 *)block->hdr.bitmap;

 block->hdr.bitmap[0] &= ~(u8)(mask >> 0 * 8);
 block->hdr.bitmap[1] &= ~(u8)(mask >> 1 * 8);
 block->hdr.bitmap[2] &= ~(u8)(mask >> 2 * 8);
 block->hdr.bitmap[3] &= ~(u8)(mask >> 3 * 8);
 block->hdr.bitmap[4] &= ~(u8)(mask >> 4 * 8);
 block->hdr.bitmap[5] &= ~(u8)(mask >> 5 * 8);
 block->hdr.bitmap[6] &= ~(u8)(mask >> 6 * 8);
 block->hdr.bitmap[7] &= ~(u8)(mask >> 7 * 8);

 after = *(u64 *)block->hdr.bitmap;
}
