
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct MPT3SAS_ADAPTER {scalar_t__ pending_io_count; int reset_wq; int shost; } ;


 int HZ ;
 int MPI2_IOC_STATE_MASK ;
 int MPI2_IOC_STATE_OPERATIONAL ;
 int mpt3sas_base_get_iocstate (struct MPT3SAS_ADAPTER*,int ) ;
 scalar_t__ scsi_host_busy (int ) ;
 int wait_event_timeout (int ,int,int) ;

void
mpt3sas_wait_for_commands_to_complete(struct MPT3SAS_ADAPTER *ioc)
{
 u32 ioc_state;

 ioc->pending_io_count = 0;

 ioc_state = mpt3sas_base_get_iocstate(ioc, 0);
 if ((ioc_state & MPI2_IOC_STATE_MASK) != MPI2_IOC_STATE_OPERATIONAL)
  return;


 ioc->pending_io_count = scsi_host_busy(ioc->shost);

 if (!ioc->pending_io_count)
  return;


 wait_event_timeout(ioc->reset_wq, ioc->pending_io_count == 0, 10 * HZ);
}
