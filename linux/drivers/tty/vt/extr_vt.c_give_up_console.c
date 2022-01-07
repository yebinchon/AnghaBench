
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consw {int dummy; } ;


 int console_lock () ;
 int console_unlock () ;
 int do_unregister_con_driver (struct consw const*) ;

void give_up_console(const struct consw *csw)
{
 console_lock();
 do_unregister_con_driver(csw);
 console_unlock();
}
