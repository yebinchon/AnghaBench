
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_lock () ;
 int console_unlock () ;
 int disable_vt_switch ;

void pm_set_vt_switch(int do_switch)
{
 console_lock();
 disable_vt_switch = !do_switch;
 console_unlock();
}
