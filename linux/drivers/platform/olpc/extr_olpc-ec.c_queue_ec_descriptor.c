
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct olpc_ec_priv {int worker; int cmd_q_lock; int cmd_q; } ;
struct ec_cmd_desc {int node; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void queue_ec_descriptor(struct ec_cmd_desc *desc,
  struct olpc_ec_priv *ec)
{
 unsigned long flags;

 INIT_LIST_HEAD(&desc->node);

 spin_lock_irqsave(&ec->cmd_q_lock, flags);
 list_add_tail(&desc->node, &ec->cmd_q);
 spin_unlock_irqrestore(&ec->cmd_q_lock, flags);

 schedule_work(&ec->worker);
}
