
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int (* resume_detect_interrupts_are_broken ) (struct uhci_hcd*) ;} ;


 scalar_t__ ignore_oc ;
 int stub1 (struct uhci_hcd*) ;
 scalar_t__ uhci_is_aspeed (struct uhci_hcd*) ;

__attribute__((used)) static int resume_detect_interrupts_are_broken(struct uhci_hcd *uhci)
{






 if (ignore_oc || uhci_is_aspeed(uhci))
  return 1;

 return uhci->resume_detect_interrupts_are_broken ?
  uhci->resume_detect_interrupts_are_broken(uhci) : 0;
}
