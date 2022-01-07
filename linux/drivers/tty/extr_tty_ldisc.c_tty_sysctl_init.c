
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_sysctl_table (int ) ;
 int tty_root_table ;

void tty_sysctl_init(void)
{
 register_sysctl_table(tty_root_table);
}
