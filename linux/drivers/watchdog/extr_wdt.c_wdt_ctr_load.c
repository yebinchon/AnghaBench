
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WDT_COUNT0 ;
 int outb_p (int,scalar_t__) ;

__attribute__((used)) static void wdt_ctr_load(int ctr, int val)
{
 outb_p(val&0xFF, WDT_COUNT0+ctr);
 outb_p(val>>8, WDT_COUNT0+ctr);
}
