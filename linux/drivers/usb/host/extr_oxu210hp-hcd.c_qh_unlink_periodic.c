
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct oxu_hcd {unsigned int periodic_size; int periodic_sched; } ;
struct TYPE_7__ {int * ptr; } ;
struct ehci_qh {unsigned int period; unsigned int start; int usecs; int c_usecs; TYPE_3__ qh_next; int qh_state; int hw_info2; TYPE_2__* dev; } ;
struct TYPE_5__ {int bandwidth_allocated; } ;
struct TYPE_8__ {TYPE_1__ self; } ;
struct TYPE_6__ {int dev; } ;


 int QH_CMASK ;
 int QH_SMASK ;
 int QH_STATE_UNLINK ;
 int dev_dbg (int *,char*,int,int,struct ehci_qh*,unsigned int,int,int) ;
 int disable_periodic (struct oxu_hcd*) ;
 int le32_to_cpup (int *) ;
 TYPE_4__* oxu_to_hcd (struct oxu_hcd*) ;
 int periodic_unlink (struct oxu_hcd*,unsigned int,struct ehci_qh*) ;
 int qh_put (struct ehci_qh*) ;

__attribute__((used)) static void qh_unlink_periodic(struct oxu_hcd *oxu, struct ehci_qh *qh)
{
 unsigned i;
 unsigned period;
 period = qh->period;
 if (period == 0)
  period = 1;

 for (i = qh->start; i < oxu->periodic_size; i += period)
  periodic_unlink(oxu, i, qh);


 oxu_to_hcd(oxu)->self.bandwidth_allocated -= qh->period
  ? ((qh->usecs + qh->c_usecs) / qh->period)
  : (qh->usecs * 8);

 dev_dbg(&qh->dev->dev,
  "unlink qh%d-%04x/%p start %d [%d/%d us]\n",
  qh->period,
  le32_to_cpup(&qh->hw_info2) & (QH_CMASK | QH_SMASK),
  qh, qh->start, qh->usecs, qh->c_usecs);


 qh->qh_state = QH_STATE_UNLINK;
 qh->qh_next.ptr = ((void*)0);
 qh_put(qh);


 oxu->periodic_sched--;
 if (!oxu->periodic_sched)
  (void) disable_periodic(oxu);
}
