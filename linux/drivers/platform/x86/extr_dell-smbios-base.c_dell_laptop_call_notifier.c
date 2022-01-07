
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blocking_notifier_call_chain (int *,unsigned long,void*) ;
 int dell_laptop_chain_head ;

void dell_laptop_call_notifier(unsigned long action, void *data)
{
 blocking_notifier_call_chain(&dell_laptop_chain_head, action, data);
}
