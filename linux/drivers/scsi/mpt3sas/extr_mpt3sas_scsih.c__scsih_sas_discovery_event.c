
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_event_work {scalar_t__ event_data; } ;
struct TYPE_3__ {int num_phys; } ;
struct MPT3SAS_ADAPTER {int logging_level; scalar_t__ shost_recovery; TYPE_1__ sas_hba; } ;
struct TYPE_4__ {scalar_t__ ReasonCode; scalar_t__ DiscoveryStatus; } ;
typedef TYPE_2__ Mpi2EventDataSasDiscovery_t ;


 scalar_t__ MPI2_EVENT_SAS_DISC_RC_STARTED ;
 int MPT_DEBUG_EVENT_WORK_TASK ;
 int _scsih_sas_host_add (struct MPT3SAS_ADAPTER*) ;
 scalar_t__ disable_discovery ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,char*) ;
 int le32_to_cpu (scalar_t__) ;
 int pr_cont (char*,...) ;
 int ssleep (int) ;

__attribute__((used)) static void
_scsih_sas_discovery_event(struct MPT3SAS_ADAPTER *ioc,
 struct fw_event_work *fw_event)
{
 Mpi2EventDataSasDiscovery_t *event_data =
  (Mpi2EventDataSasDiscovery_t *) fw_event->event_data;

 if (ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK) {
  ioc_info(ioc, "discovery event: (%s)",
    event_data->ReasonCode == MPI2_EVENT_SAS_DISC_RC_STARTED ?
    "start" : "stop");
  if (event_data->DiscoveryStatus)
   pr_cont("discovery_status(0x%08x)",
    le32_to_cpu(event_data->DiscoveryStatus));
  pr_cont("\n");
 }

 if (event_data->ReasonCode == MPI2_EVENT_SAS_DISC_RC_STARTED &&
     !ioc->sas_hba.num_phys) {
  if (disable_discovery > 0 && ioc->shost_recovery) {

   while (ioc->shost_recovery)
    ssleep(1);
  }
  _scsih_sas_host_add(ioc);
 }
}
