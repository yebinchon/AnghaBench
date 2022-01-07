
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty3270 {int attn; int update_flags; int hanglet; int view; int throttle; } ;
struct raw3270_request {int rescnt; int rc; } ;
struct TYPE_4__ {int dstat; int count; } ;
struct TYPE_3__ {TYPE_2__ cmd; } ;
struct irb {TYPE_1__ scsw; } ;


 int DEV_STAT_ATTENTION ;
 int DEV_STAT_DEV_END ;
 int DEV_STAT_UNIT_CHECK ;
 int EIO ;
 int TTY_UPDATE_ALL ;
 int raw3270_get_view (int *) ;
 int tasklet_schedule (int *) ;
 int tty3270_issue_read (struct tty3270*,int ) ;
 int tty3270_set_timer (struct tty3270*,int) ;

__attribute__((used)) static void
tty3270_irq(struct tty3270 *tp, struct raw3270_request *rq, struct irb *irb)
{

 if (irb->scsw.cmd.dstat & DEV_STAT_ATTENTION) {
  if (!tp->throttle)
   tty3270_issue_read(tp, 0);
  else
   tp->attn = 1;
 }

 if (rq) {
  if (irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK) {
   rq->rc = -EIO;
   raw3270_get_view(&tp->view);
   tasklet_schedule(&tp->hanglet);
  } else {

   rq->rescnt = irb->scsw.cmd.count;
  }
 } else if (irb->scsw.cmd.dstat & DEV_STAT_DEV_END) {

  tp->update_flags = TTY_UPDATE_ALL;
  tty3270_set_timer(tp, 1);
 }
}
