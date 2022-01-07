
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpwd {TYPE_1__* devs; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 int WD_BLIMIT ;
 int WD_INTR_ON ;
 scalar_t__ WD_LIMIT ;
 int cpwd_toggleintr (struct cpwd*,int,int ) ;
 int cpwd_writew (int ,scalar_t__) ;

__attribute__((used)) static void cpwd_resetbrokentimer(struct cpwd *p, int index)
{
 cpwd_toggleintr(p, index, WD_INTR_ON);
 cpwd_writew(WD_BLIMIT, p->devs[index].regs + WD_LIMIT);
}
