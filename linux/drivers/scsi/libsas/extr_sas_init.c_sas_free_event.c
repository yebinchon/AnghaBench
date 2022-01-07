
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_sas_phy {int event_nr; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;


 int atomic_dec (int *) ;
 int kmem_cache_free (int ,struct asd_sas_event*) ;
 int sas_event_cache ;

void sas_free_event(struct asd_sas_event *event)
{
 struct asd_sas_phy *phy = event->phy;

 kmem_cache_free(sas_event_cache, event);
 atomic_dec(&phy->event_nr);
}
