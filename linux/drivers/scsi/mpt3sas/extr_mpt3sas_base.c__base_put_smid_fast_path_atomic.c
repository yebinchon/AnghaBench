
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct MPT3SAS_ADAPTER {TYPE_1__* chip; } ;
struct TYPE_4__ {int SMID; int MSIxIndex; int RequestFlags; } ;
struct TYPE_3__ {int AtomicRequestDescriptorPost; } ;
typedef TYPE_2__ Mpi26AtomicRequestDescriptor_t ;


 int MPI25_REQ_DESCRIPT_FLAGS_FAST_PATH_SCSI_IO ;
 int _base_set_and_get_msix_index (struct MPT3SAS_ADAPTER*,int ) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int writel (int ,int *) ;

__attribute__((used)) static void
_base_put_smid_fast_path_atomic(struct MPT3SAS_ADAPTER *ioc, u16 smid,
 u16 handle)
{
 Mpi26AtomicRequestDescriptor_t descriptor;
 u32 *request = (u32 *)&descriptor;

 descriptor.RequestFlags = MPI25_REQ_DESCRIPT_FLAGS_FAST_PATH_SCSI_IO;
 descriptor.MSIxIndex = _base_set_and_get_msix_index(ioc, smid);
 descriptor.SMID = cpu_to_le16(smid);

 writel(cpu_to_le32(*request), &ioc->chip->AtomicRequestDescriptorPost);
}
