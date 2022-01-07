
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {int scsi3addr; } ;
struct ctlr_info {int nr_cmds; int lock; struct CommandList* cmd_pool; } ;
struct CommandList {int refcount; } ;


 int atomic_inc_return (int *) ;
 int cmd_free (struct ctlr_info*,struct CommandList*) ;
 scalar_t__ hpsa_cmd_dev_match (struct ctlr_info*,struct CommandList*,struct hpsa_scsi_dev_t*,int ) ;
 int hpsa_is_cmd_idle (struct CommandList*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hpsa_find_outstanding_commands_for_dev(struct ctlr_info *h,
      struct hpsa_scsi_dev_t *dev)
{
 int i;
 int count = 0;

 for (i = 0; i < h->nr_cmds; i++) {
  struct CommandList *c = h->cmd_pool + i;
  int refcount = atomic_inc_return(&c->refcount);

  if (refcount > 1 && hpsa_cmd_dev_match(h, c, dev,
    dev->scsi3addr)) {
   unsigned long flags;

   spin_lock_irqsave(&h->lock, flags);
   if (!hpsa_is_cmd_idle(c))
    ++count;
   spin_unlock_irqrestore(&h->lock, flags);
  }

  cmd_free(h, c);
 }

 return count;
}
