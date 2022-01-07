
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int usb_notifier_list ;

void usb_register_notify(struct notifier_block *nb)
{
 blocking_notifier_chain_register(&usb_notifier_list, nb);
}
