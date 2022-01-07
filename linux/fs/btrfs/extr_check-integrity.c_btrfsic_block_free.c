
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_block {scalar_t__ magic_num; } ;


 scalar_t__ BTRFSIC_BLOCK_MAGIC_NUMBER ;
 int BUG_ON (int) ;
 int kfree (struct btrfsic_block*) ;

__attribute__((used)) static void btrfsic_block_free(struct btrfsic_block *b)
{
 BUG_ON(!(((void*)0) == b || BTRFSIC_BLOCK_MAGIC_NUMBER == b->magic_num));
 kfree(b);
}
