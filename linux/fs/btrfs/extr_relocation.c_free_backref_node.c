
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backref_node {int dummy; } ;
struct backref_cache {int nr_nodes; } ;


 int kfree (struct backref_node*) ;

__attribute__((used)) static void free_backref_node(struct backref_cache *cache,
         struct backref_node *node)
{
 if (node) {
  cache->nr_nodes--;
  kfree(node);
 }
}
