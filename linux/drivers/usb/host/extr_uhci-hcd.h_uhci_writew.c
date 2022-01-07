
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uhci_hcd {scalar_t__ io_addr; } ;


 int outw (int ,scalar_t__) ;

__attribute__((used)) static inline void uhci_writew(const struct uhci_hcd *uhci, u16 val, int reg)
{
 outw(val, uhci->io_addr + reg);
}
