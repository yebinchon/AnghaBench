
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSOLE_LOGLEVEL_DEFAULT ;
 int console_loglevel ;
 int pr_info (char*,int) ;

__attribute__((used)) static void sysrq_handle_loglevel(int key)
{
 int i;

 i = key - '0';
 console_loglevel = CONSOLE_LOGLEVEL_DEFAULT;
 pr_info("Loglevel set to %d\n", i);
 console_loglevel = i;
}
