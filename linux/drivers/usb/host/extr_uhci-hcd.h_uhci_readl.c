
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uhci_hcd {scalar_t__ io_addr; } ;


 int inl (scalar_t__) ;

__attribute__((used)) static inline u32 uhci_readl(const struct uhci_hcd *uhci, int reg)
{
 return inl(uhci->io_addr + reg);
}
