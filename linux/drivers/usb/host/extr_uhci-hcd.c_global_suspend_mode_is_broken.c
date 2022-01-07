
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int (* global_suspend_mode_is_broken ) (struct uhci_hcd*) ;} ;


 int stub1 (struct uhci_hcd*) ;

__attribute__((used)) static int global_suspend_mode_is_broken(struct uhci_hcd *uhci)
{
 return uhci->global_suspend_mode_is_broken ?
  uhci->global_suspend_mode_is_broken(uhci) : 0;
}
