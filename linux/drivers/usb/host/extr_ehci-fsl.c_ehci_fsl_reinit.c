
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int dummy; } ;


 int EINVAL ;
 scalar_t__ ehci_fsl_usb_setup (struct ehci_hcd*) ;

__attribute__((used)) static int ehci_fsl_reinit(struct ehci_hcd *ehci)
{
 if (ehci_fsl_usb_setup(ehci))
  return -EINVAL;

 return 0;
}
