
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_cmnd {int dummy; } ;
struct _pcie_device {int device_info; } ;
struct MPT3SAS_ADAPTER {int dummy; } ;


 int NVME_PRP_PAGE_SIZE ;
 scalar_t__ mpt3sas_scsih_is_pcie_scsi_device (int ) ;
 int scsi_bufflen (struct scsi_cmnd*) ;

__attribute__((used)) static bool
base_is_prp_possible(struct MPT3SAS_ADAPTER *ioc,
 struct _pcie_device *pcie_device, struct scsi_cmnd *scmd, int sge_count)
{
 u32 data_length = 0;
 bool build_prp = 1;

 data_length = scsi_bufflen(scmd);
 if (pcie_device &&
     (mpt3sas_scsih_is_pcie_scsi_device(pcie_device->device_info))) {
  build_prp = 0;
  return build_prp;
 }




 if ((data_length <= NVME_PRP_PAGE_SIZE*4) && (sge_count <= 2))
  build_prp = 0;

 return build_prp;
}
