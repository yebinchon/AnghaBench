
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uhci_hcd {scalar_t__ io_addr; } ;


 int inw (scalar_t__) ;

__attribute__((used)) static inline u16 uhci_readw(const struct uhci_hcd *uhci, int reg)
{
 return inw(uhci->io_addr + reg);
}
