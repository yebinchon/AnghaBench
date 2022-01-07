
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPT3SAS_ADAPTER {scalar_t__ pending_io_count; int reset_wq; int shost; scalar_t__ shost_recovery; } ;


 scalar_t__ scsi_host_busy (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void
_base_recovery_check(struct MPT3SAS_ADAPTER *ioc)
{



 if (ioc->shost_recovery && ioc->pending_io_count) {
  ioc->pending_io_count = scsi_host_busy(ioc->shost);
  if (ioc->pending_io_count == 0)
   wake_up(&ioc->reset_wq);
 }
}
