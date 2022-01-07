
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
struct fs3270 {int attention; int wait; } ;


 int DEV_STAT_ATTENTION ;
 int DEV_STAT_UNIT_CHECK ;
 int EIO ;
 int wake_up (int *) ;

__attribute__((used)) static void
fs3270_irq(struct fs3270 *fp, struct raw3270_request *rq, struct irb *irb)
{

 if (irb->scsw.cmd.dstat & DEV_STAT_ATTENTION) {
  fp->attention = 1;
  wake_up(&fp->wait);
 }

 if (rq) {
  if (irb->scsw.cmd.dstat & DEV_STAT_UNIT_CHECK)
   rq->rc = -EIO;
  else

   rq->rescnt = irb->scsw.cmd.count;
 }
}
