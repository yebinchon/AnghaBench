
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int blocking_notifier_call_chain (int *,int ,int *) ;
 int xenstore_chain ;
 int xenstored_ready ;

void xenbus_probe(struct work_struct *unused)
{
 xenstored_ready = 1;


 blocking_notifier_call_chain(&xenstore_chain, 0, ((void*)0));
}
