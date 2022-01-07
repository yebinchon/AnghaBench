
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_selection () ;
 int console_lock () ;
 int console_unlock () ;

void speakup_clear_selection(void)
{
 console_lock();
 clear_selection();
 console_unlock();
}
