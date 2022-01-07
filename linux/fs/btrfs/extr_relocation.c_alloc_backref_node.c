
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backref_node {int rb_node; int lower; int upper; int list; } ;
struct backref_cache {int nr_nodes; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 struct backref_node* kzalloc (int,int ) ;

__attribute__((used)) static struct backref_node *alloc_backref_node(struct backref_cache *cache)
{
 struct backref_node *node;

 node = kzalloc(sizeof(*node), GFP_NOFS);
 if (node) {
  INIT_LIST_HEAD(&node->list);
  INIT_LIST_HEAD(&node->upper);
  INIT_LIST_HEAD(&node->lower);
  RB_CLEAR_NODE(&node->rb_node);
  cache->nr_nodes++;
 }
 return node;
}
