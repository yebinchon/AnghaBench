
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uhci_hcd {TYPE_1__* term_td; scalar_t__ is_stopped; } ;
struct TYPE_4__ {int rh_timer; } ;
struct TYPE_3__ {int status; } ;


 int TD_CTRL_IOC ;
 int cpu_to_hc32 (struct uhci_hcd*,int ) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 TYPE_2__* uhci_to_hcd (struct uhci_hcd*) ;

__attribute__((used)) static void uhci_set_next_interrupt(struct uhci_hcd *uhci)
{
 if (uhci->is_stopped)
  mod_timer(&uhci_to_hcd(uhci)->rh_timer, jiffies);
 uhci->term_td->status |= cpu_to_hc32(uhci, TD_CTRL_IOC);
}
