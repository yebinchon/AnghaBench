
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uhci_hcd {scalar_t__ io_addr; } ;


 int inb (scalar_t__) ;

__attribute__((used)) static inline u8 uhci_readb(const struct uhci_hcd *uhci, int reg)
{
 return inb(uhci->io_addr + reg);
}
