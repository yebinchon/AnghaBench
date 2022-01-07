
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct raw3270_request {int rescnt; int rc; } ;
struct TYPE_3__ {int dstat; int count; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct irb {TYPE_2__ scsw; } ;
struct con3270 {int update_flags; } ;


 int CON_UPDATE_ALL ;
 int DEV_STAT_ATTENTION ;
 int DEV_STAT_DEV_END ;
 int DEV_STAT_UNIT_CHECK ;
 int EIO ;
 int con3270_issue_read (struct con3270*) ;
 int con3270_set_timer (struct con3270*,int) ;

__attribute__((used)) static void
con3270_irq(struct con3270 *cp, struct raw3270_request *rq, struct irb *irb)
{

 if (irb->scsw.cmd.dstat & DEV_STAT_ATTENTION)
  con3270_issue_read(cp);

 if (rq) {
  if (irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK)
   rq->rc = -EIO;
  else

   rq->rescnt = irb->scsw.cmd.count;
 } else if (irb->scsw.cmd.dstat & DEV_STAT_DEV_END) {

  cp->update_flags = CON_UPDATE_ALL;
  con3270_set_timer(cp, 1);
 }
}
