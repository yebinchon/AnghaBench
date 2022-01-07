
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int IOCCapabilities; } ;
struct MPT3SAS_ADAPTER {TYPE_1__ facts; } ;





 int MPI2_IOCFACTS_CAPABILITY_DIAG_TRACE_BUFFER ;
 int MPI2_IOCFACTS_CAPABILITY_EXTENDED_BUFFER ;
 int MPI2_IOCFACTS_CAPABILITY_SNAPSHOT_BUFFER ;

__attribute__((used)) static u8
_ctl_diag_capability(struct MPT3SAS_ADAPTER *ioc, u8 buffer_type)
{
 u8 rc = 0;

 switch (buffer_type) {
 case 128:
  if (ioc->facts.IOCCapabilities &
      MPI2_IOCFACTS_CAPABILITY_DIAG_TRACE_BUFFER)
   rc = 1;
  break;
 case 129:
  if (ioc->facts.IOCCapabilities &
      MPI2_IOCFACTS_CAPABILITY_SNAPSHOT_BUFFER)
   rc = 1;
  break;
 case 130:
  if (ioc->facts.IOCCapabilities &
      MPI2_IOCFACTS_CAPABILITY_EXTENDED_BUFFER)
   rc = 1;
 }

 return rc;
}
