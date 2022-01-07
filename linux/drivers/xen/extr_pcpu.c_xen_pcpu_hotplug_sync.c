
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int schedule_work (int *) ;
 int xen_pcpu_work ;

void xen_pcpu_hotplug_sync(void)
{
 schedule_work(&xen_pcpu_work);
}
