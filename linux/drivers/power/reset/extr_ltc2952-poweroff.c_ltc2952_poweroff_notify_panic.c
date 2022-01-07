
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct ltc2952_poweroff {int kernel_panic; } ;


 int NOTIFY_DONE ;
 int panic_notifier ;
 struct ltc2952_poweroff* to_ltc2952 (struct notifier_block*,int ) ;

__attribute__((used)) static int ltc2952_poweroff_notify_panic(struct notifier_block *nb,
      unsigned long code, void *unused)
{
 struct ltc2952_poweroff *data = to_ltc2952(nb, panic_notifier);

 data->kernel_panic = 1;
 return NOTIFY_DONE;
}
