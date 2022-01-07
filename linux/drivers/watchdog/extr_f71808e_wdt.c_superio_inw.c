
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int superio_inb (int,int) ;

__attribute__((used)) static int superio_inw(int base, int reg)
{
 int val;
 val = superio_inb(base, reg) << 8;
 val |= superio_inb(base, reg + 1);
 return val;
}
