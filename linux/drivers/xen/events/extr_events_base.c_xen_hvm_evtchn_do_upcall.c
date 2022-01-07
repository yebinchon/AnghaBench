
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __xen_evtchn_do_upcall () ;

void xen_hvm_evtchn_do_upcall(void)
{
 __xen_evtchn_do_upcall();
}
