
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REBOOT_HARD ;
 int machine_restart (int *) ;
 int reboot_mode ;

__attribute__((used)) static void restart_poweroff_do_poweroff(void)
{
 reboot_mode = REBOOT_HARD;
 machine_restart(((void*)0));
}
