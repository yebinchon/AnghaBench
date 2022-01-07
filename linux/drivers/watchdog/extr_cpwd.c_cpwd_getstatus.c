
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpwd {TYPE_1__* devs; scalar_t__ broken; } ;
struct TYPE_2__ {unsigned char intr_mask; int runstatus; scalar_t__ regs; } ;


 scalar_t__ PLD_IMASK ;
 unsigned char WD_EXPIRED ;
 unsigned char WD_FREERUN ;
 unsigned char WD_RUNNING ;
 unsigned char WD_SERVICED ;
 scalar_t__ WD_STATUS ;
 int WD_STAT_BSTOP ;
 int WD_STAT_SVCD ;
 unsigned char WD_STOPPED ;
 unsigned char WD_S_EXPIRED ;
 unsigned char WD_S_RUNNING ;
 unsigned char cpwd_readb (scalar_t__) ;

__attribute__((used)) static int cpwd_getstatus(struct cpwd *p, int index)
{
 unsigned char stat = cpwd_readb(p->devs[index].regs + WD_STATUS);
 unsigned char intr = cpwd_readb(p->devs[index].regs + PLD_IMASK);
 unsigned char ret = WD_STOPPED;


 if (!stat)
  return ret;


 else if (WD_S_EXPIRED & stat) {
  ret = WD_EXPIRED;
 } else if (WD_S_RUNNING & stat) {
  if (intr & p->devs[index].intr_mask) {
   ret = WD_FREERUN;
  } else {
   if (p->broken &&
       (p->devs[index].runstatus & WD_STAT_BSTOP)) {
    if (p->devs[index].runstatus & WD_STAT_SVCD) {
     ret = WD_EXPIRED;
    } else {


     ret = WD_FREERUN;
    }
   } else {
    ret = WD_RUNNING;
   }
  }
 }


 if (p->devs[index].runstatus & WD_STAT_SVCD)
  ret |= WD_SERVICED;

 return ret;
}
