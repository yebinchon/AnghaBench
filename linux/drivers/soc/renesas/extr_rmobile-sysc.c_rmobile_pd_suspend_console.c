
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 scalar_t__ console_suspend_enabled ;

__attribute__((used)) static int rmobile_pd_suspend_console(void)
{




 return console_suspend_enabled ? 0 : -EBUSY;
}
