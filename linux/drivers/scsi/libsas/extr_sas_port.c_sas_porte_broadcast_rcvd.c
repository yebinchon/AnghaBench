
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct work_struct {int dummy; } ;
struct asd_sas_phy {TYPE_2__* port; int sas_prim_lock; int sas_prim; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;
struct TYPE_4__ {TYPE_1__* ha; } ;
struct TYPE_3__ {int disco_q; } ;


 int DISCE_REVALIDATE_DOMAIN ;
 int flush_workqueue (int ) ;
 int pr_debug (char*,int ) ;
 int sas_discover_event (TYPE_2__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct asd_sas_event* to_asd_sas_event (struct work_struct*) ;

void sas_porte_broadcast_rcvd(struct work_struct *work)
{
 struct asd_sas_event *ev = to_asd_sas_event(work);
 struct asd_sas_phy *phy = ev->phy;
 unsigned long flags;
 u32 prim;

 spin_lock_irqsave(&phy->sas_prim_lock, flags);
 prim = phy->sas_prim;
 spin_unlock_irqrestore(&phy->sas_prim_lock, flags);

 pr_debug("broadcast received: %d\n", prim);
 sas_discover_event(phy->port, DISCE_REVALIDATE_DOMAIN);

 if (phy->port)
  flush_workqueue(phy->port->ha->disco_q);
}
