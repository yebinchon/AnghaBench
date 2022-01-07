
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uhci_hcd {scalar_t__ io_addr; } ;


 int outl (int ,scalar_t__) ;

__attribute__((used)) static inline void uhci_writel(const struct uhci_hcd *uhci, u32 val, int reg)
{
 outl(val, uhci->io_addr + reg);
}
