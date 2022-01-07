
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG ;
 int VAL ;
 int outb (int,int ) ;

__attribute__((used)) static void superio_outb(int val, int reg)
{
 outb(reg, REG);
 outb(val, VAL);
}
