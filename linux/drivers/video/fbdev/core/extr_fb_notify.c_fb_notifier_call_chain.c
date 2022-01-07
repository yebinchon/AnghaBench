
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blocking_notifier_call_chain (int *,unsigned long,void*) ;
 int fb_notifier_list ;

int fb_notifier_call_chain(unsigned long val, void *v)
{
 return blocking_notifier_call_chain(&fb_notifier_list, val, v);
}
