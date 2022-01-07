
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 scalar_t__ base ;
 int mdelay (int) ;
 scalar_t__ pcu_base ;
 int pr_emerg (char*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int zx_restart_handler(struct notifier_block *this,
         unsigned long mode, void *cmd)
{
 writel_relaxed(1, base + 0xb0);
 writel_relaxed(1, pcu_base + 0x34);

 mdelay(50);
 pr_emerg("Unable to restart system\n");

 return NOTIFY_DONE;
}
