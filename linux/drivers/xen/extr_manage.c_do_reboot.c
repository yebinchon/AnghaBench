
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHUTDOWN_POWEROFF ;
 int ctrl_alt_del () ;
 int shutting_down ;

__attribute__((used)) static void do_reboot(void)
{
 shutting_down = SHUTDOWN_POWEROFF;
 ctrl_alt_del();
}
