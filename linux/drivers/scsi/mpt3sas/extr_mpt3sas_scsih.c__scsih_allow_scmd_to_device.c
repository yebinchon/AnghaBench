
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;
struct MPT3SAS_ADAPTER {scalar_t__ hba_mpi_version_belonged; scalar_t__ remove_host; scalar_t__ pci_error_recovery; } ;


 scalar_t__ MPI2_VERSION ;



inline bool _scsih_allow_scmd_to_device(struct MPT3SAS_ADAPTER *ioc,
 struct scsi_cmnd *scmd)
{

 if (ioc->pci_error_recovery)
  return 0;

 if (ioc->hba_mpi_version_belonged == MPI2_VERSION) {
  if (ioc->remove_host)
   return 0;

  return 1;
 }

 if (ioc->remove_host) {

  switch (scmd->cmnd[0]) {
  case 128:
  case 129:
   return 1;
  default:
   return 0;
  }
 }

 return 1;
}
