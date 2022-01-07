
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int nr_cmds; struct CommandList* cmd_pool; } ;
struct CommandList {int refcount; } ;


 int atomic_set (int *,int ) ;
 int hpsa_cmd_init (struct ctlr_info*,int,struct CommandList*) ;

__attribute__((used)) static void hpsa_preinitialize_commands(struct ctlr_info *h)
{
 int i;

 for (i = 0; i < h->nr_cmds; i++) {
  struct CommandList *c = h->cmd_pool + i;

  hpsa_cmd_init(h, i, c);
  atomic_set(&c->refcount, 0);
 }
}
