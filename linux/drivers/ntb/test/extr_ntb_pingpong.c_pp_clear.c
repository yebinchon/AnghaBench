
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_ctx {TYPE_1__* ntb; int in_db; int timer; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int hrtimer_cancel (int *) ;
 int ntb_db_set_mask (TYPE_1__*,int ) ;

__attribute__((used)) static void pp_clear(struct pp_ctx *pp)
{
 hrtimer_cancel(&pp->timer);

 ntb_db_set_mask(pp->ntb, pp->in_db);

 dev_dbg(&pp->ntb->dev, "Ping-pong cancelled\n");
}
