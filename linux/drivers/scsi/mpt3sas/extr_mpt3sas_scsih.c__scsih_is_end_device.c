
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MPI2_SAS_DEVICE_INFO_END_DEVICE ;
 int MPI2_SAS_DEVICE_INFO_SATA_DEVICE ;
 int MPI2_SAS_DEVICE_INFO_SSP_TARGET ;
 int MPI2_SAS_DEVICE_INFO_STP_TARGET ;

__attribute__((used)) static int
_scsih_is_end_device(u32 device_info)
{
 if (device_info & MPI2_SAS_DEVICE_INFO_END_DEVICE &&
  ((device_info & MPI2_SAS_DEVICE_INFO_SSP_TARGET) |
  (device_info & MPI2_SAS_DEVICE_INFO_STP_TARGET) |
  (device_info & MPI2_SAS_DEVICE_INFO_SATA_DEVICE)))
  return 1;
 else
  return 0;
}
