
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shost; } ;
struct sas_ha_struct {int num_phys; int drain_mutex; struct asd_sas_port** sas_port; TYPE_1__ core; } ;
struct asd_sas_port {int dummy; } ;


 int DISCE_SUSPEND ;
 int __sas_drain_work (struct sas_ha_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sas_disable_events (struct sas_ha_struct*) ;
 int sas_discover_event (struct asd_sas_port*,int ) ;
 int scsi_block_requests (int ) ;

void sas_suspend_ha(struct sas_ha_struct *ha)
{
 int i;

 sas_disable_events(ha);
 scsi_block_requests(ha->core.shost);
 for (i = 0; i < ha->num_phys; i++) {
  struct asd_sas_port *port = ha->sas_port[i];

  sas_discover_event(port, DISCE_SUSPEND);
 }


 mutex_lock(&ha->drain_mutex);
 __sas_drain_work(ha);
 mutex_unlock(&ha->drain_mutex);
}
