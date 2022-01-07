
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int notify_phy_event; int notify_port_event; } ;


 int sas_notify_phy_event ;
 int sas_notify_port_event ;

int sas_init_events(struct sas_ha_struct *sas_ha)
{
 sas_ha->notify_port_event = sas_notify_port_event;
 sas_ha->notify_phy_event = sas_notify_phy_event;

 return 0;
}
