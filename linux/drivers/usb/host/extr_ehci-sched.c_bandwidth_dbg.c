
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ehci_per_sched {int bw_phase; int cs_mask; int c_usecs; int usecs; int period; scalar_t__ phase_uf; int phase; int bw_uperiod; TYPE_3__* ep; TYPE_1__* udev; } ;
struct ehci_hcd {int dummy; } ;
struct TYPE_5__ {int bEndpointAddress; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int *,char*,int ,char*,char*,scalar_t__,int ,int ,scalar_t__,int ,int ,int ,int ) ;

__attribute__((used)) static void bandwidth_dbg(struct ehci_hcd *ehci, int sign, char *type,
  struct ehci_per_sched *ps)
{
 dev_dbg(&ps->udev->dev,
   "ep %02x: %s %s @ %u+%u (%u.%u+%u) [%u/%u us] mask %04x\n",
   ps->ep->desc.bEndpointAddress,
   (sign >= 0 ? "reserve" : "release"), type,
   (ps->bw_phase << 3) + ps->phase_uf, ps->bw_uperiod,
   ps->phase, ps->phase_uf, ps->period,
   ps->usecs, ps->c_usecs, ps->cs_mask);
}
