
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MPI26_PCIE_DEVINFO_MASK_DEVICE_TYPE ;
 int MPI26_PCIE_DEVINFO_NVME ;
 int MPI26_PCIE_DEVINFO_SCSI ;

__attribute__((used)) static int
_scsih_is_nvme_pciescsi_device(u32 device_info)
{
 if (((device_info & MPI26_PCIE_DEVINFO_MASK_DEVICE_TYPE)
     == MPI26_PCIE_DEVINFO_NVME) ||
     ((device_info & MPI26_PCIE_DEVINFO_MASK_DEVICE_TYPE)
     == MPI26_PCIE_DEVINFO_SCSI))
  return 1;
 else
  return 0;
}
