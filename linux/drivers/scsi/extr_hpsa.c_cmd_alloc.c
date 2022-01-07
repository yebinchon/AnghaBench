
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {scalar_t__ cmd_pool_bits; struct CommandList* cmd_pool; } ;
struct CommandList {int * device; int refcount; } ;


 int BITS_PER_LONG ;
 int HPSA_NRESERVED_CMDS ;
 int atomic_inc_return (int *) ;
 int cmd_free (struct ctlr_info*,struct CommandList*) ;
 int find_next_zero_bit (scalar_t__,int,int) ;
 int hpsa_cmd_partial_init (struct ctlr_info*,int,struct CommandList*) ;
 int set_bit (int,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct CommandList *cmd_alloc(struct ctlr_info *h)
{
 struct CommandList *c;
 int refcount, i;
 int offset = 0;
 for (;;) {
  i = find_next_zero_bit(h->cmd_pool_bits,
     HPSA_NRESERVED_CMDS,
     offset);
  if (unlikely(i >= HPSA_NRESERVED_CMDS)) {
   offset = 0;
   continue;
  }
  c = h->cmd_pool + i;
  refcount = atomic_inc_return(&c->refcount);
  if (unlikely(refcount > 1)) {
   cmd_free(h, c);
   offset = (i + 1) % HPSA_NRESERVED_CMDS;
   continue;
  }
  set_bit(i & (BITS_PER_LONG - 1),
   h->cmd_pool_bits + (i / BITS_PER_LONG));
  break;
 }
 hpsa_cmd_partial_init(h, i, c);
 c->device = ((void*)0);
 return c;
}
