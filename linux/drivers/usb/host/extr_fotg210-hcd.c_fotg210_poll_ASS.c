
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fotg210_hcd {scalar_t__ rh_state; int command; scalar_t__ async_count; scalar_t__ ASS_poll_count; TYPE_1__* regs; } ;
struct TYPE_2__ {int status; } ;


 int CMD_ASE ;
 int FOTG210_HRTIMER_DISABLE_ASYNC ;
 int FOTG210_HRTIMER_POLL_ASS ;
 scalar_t__ FOTG210_RH_RUNNING ;
 unsigned int STS_ASS ;
 int fotg210_dbg (struct fotg210_hcd*,char*,unsigned int,unsigned int) ;
 int fotg210_enable_event (struct fotg210_hcd*,int ,int) ;
 unsigned int fotg210_readl (struct fotg210_hcd*,int *) ;
 int fotg210_set_command_bit (struct fotg210_hcd*,int) ;

__attribute__((used)) static void fotg210_poll_ASS(struct fotg210_hcd *fotg210)
{
 unsigned actual, want;


 if (fotg210->rh_state != FOTG210_RH_RUNNING)
  return;

 want = (fotg210->command & CMD_ASE) ? STS_ASS : 0;
 actual = fotg210_readl(fotg210, &fotg210->regs->status) & STS_ASS;

 if (want != actual) {


  if (fotg210->ASS_poll_count++ < 20) {
   fotg210_enable_event(fotg210, FOTG210_HRTIMER_POLL_ASS,
     1);
   return;
  }
  fotg210_dbg(fotg210, "Waited too long for the async schedule status (%x/%x), giving up\n",
    want, actual);
 }
 fotg210->ASS_poll_count = 0;


 if (want == 0) {
  if (fotg210->async_count > 0)
   fotg210_set_command_bit(fotg210, CMD_ASE);

 } else {
  if (fotg210->async_count == 0) {


   fotg210_enable_event(fotg210,
     FOTG210_HRTIMER_DISABLE_ASYNC,
     1);
  }
 }
}
