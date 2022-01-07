
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_EFDR ;
 int WDT_EFER ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static inline int superio_inb(int reg)
{
 outb(reg, WDT_EFER);
 return inb(WDT_EFDR);
}
