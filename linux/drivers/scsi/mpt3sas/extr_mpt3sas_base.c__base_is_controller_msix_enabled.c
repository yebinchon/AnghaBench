
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int IOCCapabilities; } ;
struct MPT3SAS_ADAPTER {scalar_t__ msix_enable; TYPE_1__ facts; } ;


 int MPI2_IOCFACTS_CAPABILITY_MSI_X_INDEX ;

__attribute__((used)) static inline int
_base_is_controller_msix_enabled(struct MPT3SAS_ADAPTER *ioc)
{
 return (ioc->facts.IOCCapabilities &
     MPI2_IOCFACTS_CAPABILITY_MSI_X_INDEX) && ioc->msix_enable;
}
