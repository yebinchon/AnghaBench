
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 struct pt_regs* get_irq_regs () ;
 scalar_t__ in_irq () ;
 int perf_event_print_debug () ;
 int show_regs (struct pt_regs*) ;

__attribute__((used)) static void sysrq_handle_showregs(int key)
{
 struct pt_regs *regs = ((void*)0);

 if (in_irq())
  regs = get_irq_regs();
 if (regs)
  show_regs(regs);
 perf_event_print_debug();
}
