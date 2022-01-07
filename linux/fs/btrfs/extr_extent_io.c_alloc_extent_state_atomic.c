
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_state {int dummy; } ;


 int GFP_ATOMIC ;
 struct extent_state* alloc_extent_state (int ) ;

__attribute__((used)) static struct extent_state *
alloc_extent_state_atomic(struct extent_state *prealloc)
{
 if (!prealloc)
  prealloc = alloc_extent_state(GFP_ATOMIC);

 return prealloc;
}
