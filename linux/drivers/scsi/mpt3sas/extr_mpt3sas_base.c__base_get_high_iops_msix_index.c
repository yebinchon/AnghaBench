
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct MPT3SAS_ADAPTER {int high_iops_outstanding; } ;
struct TYPE_2__ {int device_busy; } ;


 scalar_t__ MPT3SAS_DEVICE_HIGH_IOPS_DEPTH ;
 int MPT3SAS_HIGH_IOPS_BATCH_COUNT ;
 int MPT3SAS_HIGH_IOPS_REPLY_QUEUES ;
 int _base_get_msix_index (struct MPT3SAS_ADAPTER*,struct scsi_cmnd*) ;
 int atomic64_add_return (int,int *) ;
 scalar_t__ atomic_read (int *) ;
 int base_mod64 (int,int ) ;

__attribute__((used)) static inline u8
_base_get_high_iops_msix_index(struct MPT3SAS_ADAPTER *ioc,
 struct scsi_cmnd *scmd)
{





 if (atomic_read(&scmd->device->device_busy) >
     MPT3SAS_DEVICE_HIGH_IOPS_DEPTH)
  return base_mod64((
      atomic64_add_return(1, &ioc->high_iops_outstanding) /
      MPT3SAS_HIGH_IOPS_BATCH_COUNT),
      MPT3SAS_HIGH_IOPS_REPLY_QUEUES);

 return _base_get_msix_index(ioc, scmd);
}
