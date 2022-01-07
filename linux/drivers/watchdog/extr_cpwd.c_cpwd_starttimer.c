
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpwd {TYPE_1__* devs; scalar_t__ broken; } ;
struct TYPE_2__ {scalar_t__ regs; int timeout; int runstatus; } ;


 int WD_INTR_ON ;
 scalar_t__ WD_LIMIT ;
 int WD_STAT_BSTOP ;
 int WD_STAT_SVCD ;
 int cpwd_toggleintr (struct cpwd*,int,int ) ;
 int cpwd_writew (int ,scalar_t__) ;

__attribute__((used)) static void cpwd_starttimer(struct cpwd *p, int index)
{
 if (p->broken)
  p->devs[index].runstatus &= ~WD_STAT_BSTOP;

 p->devs[index].runstatus &= ~WD_STAT_SVCD;

 cpwd_writew(p->devs[index].timeout, p->devs[index].regs + WD_LIMIT);
 cpwd_toggleintr(p, index, WD_INTR_ON);
}
