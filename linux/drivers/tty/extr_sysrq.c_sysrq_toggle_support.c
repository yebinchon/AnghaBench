
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysrq_enabled ;
 int sysrq_on () ;
 int sysrq_register_handler () ;
 int sysrq_unregister_handler () ;

int sysrq_toggle_support(int enable_mask)
{
 bool was_enabled = sysrq_on();

 sysrq_enabled = enable_mask;

 if (was_enabled != sysrq_on()) {
  if (sysrq_on())
   sysrq_register_handler();
  else
   sysrq_unregister_handler();
 }

 return 0;
}
