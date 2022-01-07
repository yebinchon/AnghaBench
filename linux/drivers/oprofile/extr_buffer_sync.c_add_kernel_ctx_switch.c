
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESCAPE_CODE ;
 int KERNEL_ENTER_SWITCH_CODE ;
 int KERNEL_EXIT_SWITCH_CODE ;
 int add_event_entry (int ) ;

__attribute__((used)) static void add_kernel_ctx_switch(unsigned int in_kernel)
{
 add_event_entry(ESCAPE_CODE);
 if (in_kernel)
  add_event_entry(KERNEL_ENTER_SWITCH_CODE);
 else
  add_event_entry(KERNEL_EXIT_SWITCH_CODE);
}
