
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _INTC_WIDTH (unsigned long) ;

__attribute__((used)) static unsigned long intc_mode_field(unsigned long addr,
         unsigned long handle,
         unsigned long (*fn)(unsigned long,
      unsigned long,
      unsigned long),
         unsigned int irq)
{
 return fn(addr, handle, ((1 << _INTC_WIDTH(handle)) - 1));
}
