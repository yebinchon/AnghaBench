
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scsi_cmnd {int device; } ;
struct _pcie_device {int dummy; } ;
struct MPT3SAS_ADAPTER {int dummy; } ;
typedef int Mpi25SCSIIORequest_t ;


 int KERN_ERR ;
 scalar_t__ base_is_prp_possible (struct MPT3SAS_ADAPTER*,struct _pcie_device*,struct scsi_cmnd*,int) ;
 int base_make_prp_nvme (struct MPT3SAS_ADAPTER*,struct scsi_cmnd*,int *,int ,int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_dma_map (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int sdev_printk (int ,int ,char*,int ) ;

__attribute__((used)) static int
_base_check_pcie_native_sgl(struct MPT3SAS_ADAPTER *ioc,
 Mpi25SCSIIORequest_t *mpi_request, u16 smid, struct scsi_cmnd *scmd,
 struct _pcie_device *pcie_device)
{
 int sges_left;


 sges_left = scsi_dma_map(scmd);
 if (sges_left < 0) {
  sdev_printk(KERN_ERR, scmd->device,
   "scsi_dma_map failed: request for %d bytes!\n",
   scsi_bufflen(scmd));
  return 1;
 }


 if (base_is_prp_possible(ioc, pcie_device,
    scmd, sges_left) == 0) {

  goto out;
 }




 base_make_prp_nvme(ioc, scmd, mpi_request,
   smid, sges_left);

 return 0;
out:
 scsi_dma_unmap(scmd);
 return 1;
}
