
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sas_internal {TYPE_3__* dft; } ;
struct TYPE_5__ {TYPE_1__* shost; } ;
struct sas_ha_struct {scalar_t__ event_thres; TYPE_2__ core; } ;
struct asd_sas_phy {int event_nr; int id; int in_shutdown; struct sas_ha_struct* ha; } ;
struct asd_sas_event {int dummy; } ;
typedef int gfp_t ;
struct TYPE_6__ {scalar_t__ lldd_control_phy; } ;
struct TYPE_4__ {int transportt; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int PHYE_SHUTDOWN ;
 int WARN_ONCE (int,char*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ cmpxchg (int *,int ,int) ;
 scalar_t__ in_interrupt () ;
 int kmem_cache_free (int ,struct asd_sas_event*) ;
 struct asd_sas_event* kmem_cache_zalloc (int ,int ) ;
 int pr_notice (char*,int ) ;
 int sas_event_cache ;
 int sas_notify_phy_event (struct asd_sas_phy*,int ) ;
 struct sas_internal* to_sas_internal (int ) ;

struct asd_sas_event *sas_alloc_event(struct asd_sas_phy *phy)
{
 struct asd_sas_event *event;
 gfp_t flags = in_interrupt() ? GFP_ATOMIC : GFP_KERNEL;
 struct sas_ha_struct *sas_ha = phy->ha;
 struct sas_internal *i =
  to_sas_internal(sas_ha->core.shost->transportt);

 event = kmem_cache_zalloc(sas_event_cache, flags);
 if (!event)
  return ((void*)0);

 atomic_inc(&phy->event_nr);

 if (atomic_read(&phy->event_nr) > phy->ha->event_thres) {
  if (i->dft->lldd_control_phy) {
   if (cmpxchg(&phy->in_shutdown, 0, 1) == 0) {
    pr_notice("The phy%d bursting events, shut it down.\n",
       phy->id);
    sas_notify_phy_event(phy, PHYE_SHUTDOWN);
   }
  } else {

   WARN_ONCE(1, "PHY control not supported.\n");
   kmem_cache_free(sas_event_cache, event);
   atomic_dec(&phy->event_nr);
   event = ((void*)0);
  }
 }

 return event;
}
