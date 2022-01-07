
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_map {int rb_node; } ;


 int RB_EMPTY_NODE (int *) ;

__attribute__((used)) static inline int extent_map_in_tree(const struct extent_map *em)
{
 return !RB_EMPTY_NODE(&em->rb_node);
}
