
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ overflow; } ;
struct befs_btree_node {TYPE_1__ head; } ;


 scalar_t__ BEFS_BT_INVAL ;

__attribute__((used)) static int
befs_leafnode(struct befs_btree_node *node)
{

 if (node->head.overflow == BEFS_BT_INVAL)
  return 1;
 else
  return 0;
}
