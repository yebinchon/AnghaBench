
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenpf_pcpuinfo {int flags; } ;
struct TYPE_2__ {int kobj; } ;
struct pcpu {TYPE_1__ dev; int flags; } ;


 int KOBJ_OFFLINE ;
 int KOBJ_ONLINE ;
 int XEN_PCPU_FLAGS_ONLINE ;
 int kobject_uevent (int *,int ) ;
 scalar_t__ xen_pcpu_online (int ) ;

__attribute__((used)) static void pcpu_online_status(struct xenpf_pcpuinfo *info,
          struct pcpu *pcpu)
{
 if (xen_pcpu_online(info->flags) &&
    !xen_pcpu_online(pcpu->flags)) {

  pcpu->flags |= XEN_PCPU_FLAGS_ONLINE;
  kobject_uevent(&pcpu->dev.kobj, KOBJ_ONLINE);
 } else if (!xen_pcpu_online(info->flags) &&
      xen_pcpu_online(pcpu->flags)) {

  pcpu->flags &= ~XEN_PCPU_FLAGS_ONLINE;
  kobject_uevent(&pcpu->dev.kobj, KOBJ_OFFLINE);
 }
}
