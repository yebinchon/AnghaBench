
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int nr_cmds; struct CommandList* cmd_pool; } ;
struct CommandList {int refcount; } ;


 int atomic_inc_return (int *) ;
 int cmd_free (struct ctlr_info*,struct CommandList*) ;
 scalar_t__ is_accelerated_cmd (struct CommandList*) ;
 int msleep (int) ;

__attribute__((used)) static void hpsa_drain_accel_commands(struct ctlr_info *h)
{
 struct CommandList *c = ((void*)0);
 int i, accel_cmds_out;
 int refcount;

 do {
  accel_cmds_out = 0;
  for (i = 0; i < h->nr_cmds; i++) {
   c = h->cmd_pool + i;
   refcount = atomic_inc_return(&c->refcount);
   if (refcount > 1)
    accel_cmds_out += is_accelerated_cmd(c);
   cmd_free(h, c);
  }
  if (accel_cmds_out <= 0)
   break;
  msleep(100);
 } while (1);
}
