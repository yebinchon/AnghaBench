
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb_p (int,int ) ;
 int watchdog_port ;

__attribute__((used)) static void mixcomwd_ping(void)
{
 outb_p(55, watchdog_port);
 return;
}
