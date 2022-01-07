
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int * resource; } ;
struct cpwd {int regs; int irq; scalar_t__ initialized; scalar_t__ broken; TYPE_1__* devs; int enabled; } ;
struct TYPE_2__ {int runstatus; int misc; } ;


 int WD_NUMDEVS ;
 int WD_STAT_BSTOP ;
 int WD_TIMER_REGSZ ;
 int * cpwd_device ;
 int cpwd_resetbrokentimer (struct cpwd*,int) ;
 int cpwd_stoptimer (struct cpwd*,int) ;
 int cpwd_timer ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct cpwd*) ;
 int misc_deregister (int *) ;
 int of_iounmap (int *,int ,int) ;
 struct cpwd* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cpwd_remove(struct platform_device *op)
{
 struct cpwd *p = platform_get_drvdata(op);
 int i;

 for (i = 0; i < WD_NUMDEVS; i++) {
  misc_deregister(&p->devs[i].misc);

  if (!p->enabled) {
   cpwd_stoptimer(p, i);
   if (p->devs[i].runstatus & WD_STAT_BSTOP)
    cpwd_resetbrokentimer(p, i);
  }
 }

 if (p->broken)
  del_timer_sync(&cpwd_timer);

 if (p->initialized)
  free_irq(p->irq, p);

 of_iounmap(&op->resource[0], p->regs, 4 * WD_TIMER_REGSZ);

 cpwd_device = ((void*)0);

 return 0;
}
