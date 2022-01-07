
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_DOWN ;
 int PRESSED ;
 int RELEASED ;
 int __this_cpu_write (int ,int) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int reporting_keystroke ;
 int virt_keyboard ;

void speakup_fake_down_arrow(void)
{
 unsigned long flags;


 local_irq_save(flags);

 preempt_disable();

 __this_cpu_write(reporting_keystroke, 1);
 input_report_key(virt_keyboard, KEY_DOWN, PRESSED);
 input_report_key(virt_keyboard, KEY_DOWN, RELEASED);
 input_sync(virt_keyboard);
 __this_cpu_write(reporting_keystroke, 0);


 preempt_enable();

 local_irq_restore(flags);
}
