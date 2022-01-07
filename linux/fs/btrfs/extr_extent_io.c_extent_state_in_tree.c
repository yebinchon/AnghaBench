
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_state {int rb_node; } ;


 int RB_EMPTY_NODE (int *) ;

__attribute__((used)) static inline bool extent_state_in_tree(const struct extent_state *state)
{
 return !RB_EMPTY_NODE(&state->rb_node);
}
