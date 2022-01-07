
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int dummy; } ;


 int CMD_PSE ;
 int ehci_clear_command_bit (struct ehci_hcd*,int ) ;

__attribute__((used)) static void ehci_disable_PSE(struct ehci_hcd *ehci)
{
 ehci_clear_command_bit(ehci, CMD_PSE);
}
