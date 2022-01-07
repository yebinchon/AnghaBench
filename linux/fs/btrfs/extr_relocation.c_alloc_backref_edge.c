
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backref_edge {int dummy; } ;
struct backref_cache {int nr_edges; } ;


 int GFP_NOFS ;
 struct backref_edge* kzalloc (int,int ) ;

__attribute__((used)) static struct backref_edge *alloc_backref_edge(struct backref_cache *cache)
{
 struct backref_edge *edge;

 edge = kzalloc(sizeof(*edge), GFP_NOFS);
 if (edge)
  cache->nr_edges++;
 return edge;
}
