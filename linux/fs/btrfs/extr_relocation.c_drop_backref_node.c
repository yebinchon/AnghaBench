
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backref_node {int rb_node; int lower; int list; int upper; } ;
struct backref_cache {int rb_root; } ;


 int BUG_ON (int) ;
 int RB_EMPTY_NODE (int *) ;
 int drop_node_buffer (struct backref_node*) ;
 int free_backref_node (struct backref_cache*,struct backref_node*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void drop_backref_node(struct backref_cache *tree,
         struct backref_node *node)
{
 BUG_ON(!list_empty(&node->upper));

 drop_node_buffer(node);
 list_del(&node->list);
 list_del(&node->lower);
 if (!RB_EMPTY_NODE(&node->rb_node))
  rb_erase(&node->rb_node, &tree->rb_root);
 free_backref_node(tree, node);
}
