
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ohci_hcd {int dummy; } ;


 int ohci_dbg_sw (struct ohci_hcd*,char**,unsigned int*,char*,char*,scalar_t__) ;

__attribute__((used)) static void maybe_print_eds (
 struct ohci_hcd *ohci,
 char *label,
 u32 value,
 char **next,
 unsigned *size)
{
 if (value)
  ohci_dbg_sw (ohci, next, size, "%s %08x\n", label, value);
}
