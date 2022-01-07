
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_info {scalar_t__ irq; int evtchn; } ;


 int HVC_COOKIE ;
 int rebind_evtchn_irq (int ,scalar_t__) ;
 struct xencons_info* vtermno_to_xencons (int ) ;
 int xen_console_update_evtchn (struct xencons_info*) ;
 int xen_initial_domain () ;

void xen_console_resume(void)
{
 struct xencons_info *info = vtermno_to_xencons(HVC_COOKIE);
 if (info != ((void*)0) && info->irq) {
  if (!xen_initial_domain())
   xen_console_update_evtchn(info);
  rebind_evtchn_irq(info->evtchn, info->irq);
 }
}
