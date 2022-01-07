
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ REG_LOOPBACK ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int fdomain_test_loopback(int base)
{
 int i;

 for (i = 0; i < 255; i++) {
  outb(i, base + REG_LOOPBACK);
  if (inb(base + REG_LOOPBACK) != i)
   return 1;
 }

 return 0;
}
