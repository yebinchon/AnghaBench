
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int cmd_timer; } ;


 int mod_delayed_work (int ,int *,unsigned long) ;
 int system_wq ;

__attribute__((used)) static bool xhci_mod_cmd_timer(struct xhci_hcd *xhci, unsigned long delay)
{
 return mod_delayed_work(system_wq, &xhci->cmd_timer, delay);
}
