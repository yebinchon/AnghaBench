
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_stack_frame {int magic; } ;


 int BTRFSIC_BLOCK_STACK_FRAME_MAGIC_NUMBER ;
 int GFP_NOFS ;
 struct btrfsic_stack_frame* kzalloc (int,int ) ;
 int pr_info (char*) ;

__attribute__((used)) static struct btrfsic_stack_frame *btrfsic_stack_frame_alloc(void)
{
 struct btrfsic_stack_frame *sf;

 sf = kzalloc(sizeof(*sf), GFP_NOFS);
 if (((void*)0) == sf)
  pr_info("btrfsic: alloc memory failed!\n");
 else
  sf->magic = BTRFSIC_BLOCK_STACK_FRAME_MAGIC_NUMBER;
 return sf;
}
