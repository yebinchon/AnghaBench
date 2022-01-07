
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_CR ;
 int outb_p (int,int ) ;

__attribute__((used)) static void wdt_ctr_mode(int ctr, int mode)
{
 ctr <<= 6;
 ctr |= 0x30;
 ctr |= (mode << 1);
 outb_p(ctr, WDT_CR);
}
