
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fotg210_hcd {TYPE_1__* regs; int rh_state; int died_poll_count; } ;
struct TYPE_2__ {int intr_enable; int status; } ;


 int FOTG210_HRTIMER_POLL_DEAD ;
 int FOTG210_RH_HALTED ;
 int STS_HALT ;
 int end_unlink_async (struct fotg210_hcd*) ;
 int fotg210_enable_event (struct fotg210_hcd*,int ,int) ;
 int fotg210_readl (struct fotg210_hcd*,int *) ;
 int fotg210_warn (struct fotg210_hcd*,char*) ;
 int fotg210_work (struct fotg210_hcd*) ;
 int fotg210_writel (struct fotg210_hcd*,int ,int *) ;

__attribute__((used)) static void fotg210_handle_controller_death(struct fotg210_hcd *fotg210)
{
 if (!(fotg210_readl(fotg210, &fotg210->regs->status) & STS_HALT)) {


  if (fotg210->died_poll_count++ < 5) {

   fotg210_enable_event(fotg210,
     FOTG210_HRTIMER_POLL_DEAD, 1);
   return;
  }
  fotg210_warn(fotg210, "Waited too long for the controller to stop, giving up\n");
 }


 fotg210->rh_state = FOTG210_RH_HALTED;
 fotg210_writel(fotg210, 0, &fotg210->regs->intr_enable);
 fotg210_work(fotg210);
 end_unlink_async(fotg210);


}
