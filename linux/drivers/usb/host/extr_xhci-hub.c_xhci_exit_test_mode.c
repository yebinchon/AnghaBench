
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_hcd {scalar_t__ test_mode; int xhc_state; } ;
struct TYPE_3__ {int controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 scalar_t__ TEST_FORCE_EN ;
 int XHCI_STATE_HALTED ;
 int pm_runtime_allow (int ) ;
 int xhci_err (struct xhci_hcd*,char*) ;
 int xhci_halt (struct xhci_hcd*) ;
 int xhci_reset (struct xhci_hcd*) ;
 TYPE_2__* xhci_to_hcd (struct xhci_hcd*) ;

__attribute__((used)) static int xhci_exit_test_mode(struct xhci_hcd *xhci)
{
 int retval;

 if (!xhci->test_mode) {
  xhci_err(xhci, "Not in test mode, do nothing.\n");
  return 0;
 }
 if (xhci->test_mode == TEST_FORCE_EN &&
  !(xhci->xhc_state & XHCI_STATE_HALTED)) {
  retval = xhci_halt(xhci);
  if (retval)
   return retval;
 }
 pm_runtime_allow(xhci_to_hcd(xhci)->self.controller);
 xhci->test_mode = 0;
 return xhci_reset(xhci);
}
