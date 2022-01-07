
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct MPT3SAS_ADAPTER {int sas_device_list; } ;
struct TYPE_7__ {int IOCStatus; } ;
struct TYPE_6__ {int DeviceInfo; int DevHandle; } ;
typedef TYPE_1__ Mpi2SasDevicePage0_t ;
typedef TYPE_2__ Mpi2ConfigReply_t ;


 int MPI2_IOCSTATUS_MASK ;
 int MPI2_IOCSTATUS_SUCCESS ;
 int MPI2_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE ;
 int _scsih_is_end_device (int ) ;
 int _scsih_mark_responding_sas_device (struct MPT3SAS_ADAPTER*,TYPE_1__*) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ list_empty (int *) ;
 int mpt3sas_config_get_sas_device_pg0 (struct MPT3SAS_ADAPTER*,TYPE_2__*,TYPE_1__*,int ,int) ;

__attribute__((used)) static void
_scsih_search_responding_sas_devices(struct MPT3SAS_ADAPTER *ioc)
{
 Mpi2SasDevicePage0_t sas_device_pg0;
 Mpi2ConfigReply_t mpi_reply;
 u16 ioc_status;
 u16 handle;
 u32 device_info;

 ioc_info(ioc, "search for end-devices: start\n");

 if (list_empty(&ioc->sas_device_list))
  goto out;

 handle = 0xFFFF;
 while (!(mpt3sas_config_get_sas_device_pg0(ioc, &mpi_reply,
     &sas_device_pg0, MPI2_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE,
     handle))) {
  ioc_status = le16_to_cpu(mpi_reply.IOCStatus) &
      MPI2_IOCSTATUS_MASK;
  if (ioc_status != MPI2_IOCSTATUS_SUCCESS)
   break;
  handle = le16_to_cpu(sas_device_pg0.DevHandle);
  device_info = le32_to_cpu(sas_device_pg0.DeviceInfo);
  if (!(_scsih_is_end_device(device_info)))
   continue;
  _scsih_mark_responding_sas_device(ioc, &sas_device_pg0);
 }

 out:
 ioc_info(ioc, "search for end-devices: complete\n");
}
