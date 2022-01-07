
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {scalar_t__ cmd_pool_bits; struct CommandList* cmd_pool; } ;
struct CommandList {int refcount; } ;


 int BITS_PER_LONG ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int clear_bit (int,scalar_t__) ;

__attribute__((used)) static void cmd_free(struct ctlr_info *h, struct CommandList *c)
{
 if (atomic_dec_and_test(&c->refcount)) {
  int i;

  i = c - h->cmd_pool;
  clear_bit(i & (BITS_PER_LONG - 1),
     h->cmd_pool_bits + (i / BITS_PER_LONG));
 }
}
