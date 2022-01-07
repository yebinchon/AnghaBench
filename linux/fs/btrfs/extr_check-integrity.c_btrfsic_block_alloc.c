
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_block {int dummy; } ;


 int GFP_NOFS ;
 int btrfsic_block_init (struct btrfsic_block*) ;
 struct btrfsic_block* kzalloc (int,int ) ;

__attribute__((used)) static struct btrfsic_block *btrfsic_block_alloc(void)
{
 struct btrfsic_block *b;

 b = kzalloc(sizeof(*b), GFP_NOFS);
 if (((void*)0) != b)
  btrfsic_block_init(b);

 return b;
}
