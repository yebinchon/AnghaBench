
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HGA_INDEX_PORT ;
 int HGA_VALUE_PORT ;
 unsigned char inb_p (int ) ;
 int outb (unsigned char,int ) ;
 int outb_p (unsigned char,int ) ;
 int udelay (int) ;

__attribute__((used)) static int test_hga_b(unsigned char val, unsigned char reg)
{
 outb_p(reg, HGA_INDEX_PORT);
 outb (val, HGA_VALUE_PORT);
 udelay(20); val = (inb_p(HGA_VALUE_PORT) == val);
 return val;
}
