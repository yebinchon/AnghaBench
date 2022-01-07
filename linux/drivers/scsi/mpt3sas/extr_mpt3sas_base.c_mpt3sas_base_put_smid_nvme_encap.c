
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct MPT3SAS_ADAPTER {int scsi_lookup_lock; TYPE_1__* chip; } ;
struct TYPE_5__ {scalar_t__ DescriptorTypeDependent; scalar_t__ LMID; int SMID; int MSIxIndex; int RequestFlags; } ;
struct TYPE_6__ {TYPE_2__ Default; } ;
struct TYPE_4__ {int RequestDescriptorPostLow; } ;
typedef TYPE_3__ Mpi2RequestDescriptorUnion_t ;


 int MPI26_REQ_DESCRIPT_FLAGS_PCIE_ENCAPSULATED ;
 int _base_set_and_get_msix_index (struct MPT3SAS_ADAPTER*,int ) ;
 int _base_writeq (int ,int *,int *) ;
 int cpu_to_le16 (int ) ;

void
mpt3sas_base_put_smid_nvme_encap(struct MPT3SAS_ADAPTER *ioc, u16 smid)
{
 Mpi2RequestDescriptorUnion_t descriptor;
 u64 *request = (u64 *)&descriptor;

 descriptor.Default.RequestFlags =
  MPI26_REQ_DESCRIPT_FLAGS_PCIE_ENCAPSULATED;
 descriptor.Default.MSIxIndex = _base_set_and_get_msix_index(ioc, smid);
 descriptor.Default.SMID = cpu_to_le16(smid);
 descriptor.Default.LMID = 0;
 descriptor.Default.DescriptorTypeDependent = 0;
 _base_writeq(*request, &ioc->chip->RequestDescriptorPostLow,
     &ioc->scsi_lookup_lock);
}
