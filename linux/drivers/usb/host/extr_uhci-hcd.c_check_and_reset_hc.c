
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {scalar_t__ (* check_and_reset_hc ) (struct uhci_hcd*) ;} ;


 int finish_reset (struct uhci_hcd*) ;
 scalar_t__ stub1 (struct uhci_hcd*) ;

__attribute__((used)) static void check_and_reset_hc(struct uhci_hcd *uhci)
{
 if (uhci->check_and_reset_hc(uhci))
  finish_reset(uhci);
}
