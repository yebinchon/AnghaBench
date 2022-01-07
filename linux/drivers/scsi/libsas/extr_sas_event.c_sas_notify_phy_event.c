
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int dummy; } ;
struct asd_sas_phy {struct sas_ha_struct* ha; } ;
struct asd_sas_event {int work; } ;
typedef enum phy_event { ____Placeholder_phy_event } phy_event ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int INIT_SAS_EVENT (struct asd_sas_event*,int ,struct asd_sas_phy*,int) ;
 int PHY_NUM_EVENTS ;
 struct asd_sas_event* sas_alloc_event (struct asd_sas_phy*) ;
 int sas_free_event (struct asd_sas_event*) ;
 int sas_phy_event_worker ;
 int sas_queue_event (int,int *,struct sas_ha_struct*) ;

int sas_notify_phy_event(struct asd_sas_phy *phy, enum phy_event event)
{
 struct asd_sas_event *ev;
 struct sas_ha_struct *ha = phy->ha;
 int ret;

 BUG_ON(event >= PHY_NUM_EVENTS);

 ev = sas_alloc_event(phy);
 if (!ev)
  return -ENOMEM;

 INIT_SAS_EVENT(ev, sas_phy_event_worker, phy, event);

 ret = sas_queue_event(event, &ev->work, ha);
 if (ret != 1)
  sas_free_event(ev);

 return ret;
}
