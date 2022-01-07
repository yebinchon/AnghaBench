
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_state {unsigned int state; scalar_t__ end; scalar_t__ start; } ;
struct extent_changeset {int range_changed; int bytes_changed; } ;


 int GFP_ATOMIC ;
 int ulist_add (int *,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int add_extent_changeset(struct extent_state *state, unsigned bits,
     struct extent_changeset *changeset,
     int set)
{
 int ret;

 if (!changeset)
  return 0;
 if (set && (state->state & bits) == bits)
  return 0;
 if (!set && (state->state & bits) == 0)
  return 0;
 changeset->bytes_changed += state->end - state->start + 1;
 ret = ulist_add(&changeset->range_changed, state->start, state->end,
   GFP_ATOMIC);
 return ret;
}
