
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_EFDR ;
 int WDT_EFER ;
 int outb (int,int ) ;

__attribute__((used)) static void superio_outb(int reg, int val)
{
 outb(reg, WDT_EFER);
 outb(val, WDT_EFDR);
}
