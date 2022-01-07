
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uhci_hcd {scalar_t__ io_addr; } ;


 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void uhci_writeb(const struct uhci_hcd *uhci, u8 val, int reg)
{
 outb(val, uhci->io_addr + reg);
}
