
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long intc_get_prio_level (unsigned int) ;

__attribute__((used)) static unsigned long intc_mode_prio(unsigned long addr,
        unsigned long handle,
        unsigned long (*fn)(unsigned long,
            unsigned long,
            unsigned long),
        unsigned int irq)
{
 return fn(addr, handle, intc_get_prio_level(irq));
}
