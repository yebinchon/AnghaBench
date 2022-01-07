
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rb_node {int dummy; } ;
struct backref_node {int rb_node; int bytenr; } ;
struct backref_cache {int rb_root; } ;


 int EEXIST ;
 int backref_tree_panic (struct rb_node*,int ,int ) ;
 int rb_erase (int *,int *) ;
 struct rb_node* tree_insert (int *,int ,int *) ;

__attribute__((used)) static void update_backref_node(struct backref_cache *cache,
    struct backref_node *node, u64 bytenr)
{
 struct rb_node *rb_node;
 rb_erase(&node->rb_node, &cache->rb_root);
 node->bytenr = bytenr;
 rb_node = tree_insert(&cache->rb_root, node->bytenr, &node->rb_node);
 if (rb_node)
  backref_tree_panic(rb_node, -EEXIST, bytenr);
}
