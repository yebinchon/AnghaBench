
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb_p (int ) ;
 int wdt_stop ;

__attribute__((used)) static void advwdt_disable(void)
{
 inb_p(wdt_stop);
}
