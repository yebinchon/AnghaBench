
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int superio_outb (int,int) ;

__attribute__((used)) static void superio_select(int ld)
{
 superio_outb(0x07, ld);
}
