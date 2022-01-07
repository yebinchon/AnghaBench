
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 scalar_t__ base ;
 int cpu_do_idle () ;
 scalar_t__ reboot_offset ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int hisi_restart_handler(struct notifier_block *this,
    unsigned long mode, void *cmd)
{
 writel_relaxed(0xdeadbeef, base + reboot_offset);

 while (1)
  cpu_do_idle();

 return NOTIFY_DONE;
}
