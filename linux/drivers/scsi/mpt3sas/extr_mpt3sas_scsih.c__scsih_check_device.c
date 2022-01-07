
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef void* u64 ;
typedef int u32 ;
typedef void* u16 ;
struct scsi_target {struct MPT3SAS_TARGET* hostdata; } ;
struct _sas_device {void* handle; char* connector_name; int enclosure_handle; int is_chassis_slot_valid; int chassis_slot; void* enclosure_logical_id; scalar_t__ enclosure_level; struct scsi_target* starget; } ;
struct TYPE_6__ {int ChassisSlot; int Flags; int EnclosureLogicalID; } ;
struct _enclosure_node {TYPE_1__ pg0; } ;
struct MPT3SAS_TARGET {void* handle; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; } ;
struct TYPE_8__ {int IOCStatus; } ;
struct TYPE_7__ {scalar_t__ PhyNum; int AccessStatus; int Flags; int EnclosureHandle; int ConnectorName; scalar_t__ EnclosureLevel; int SASAddress; int DeviceInfo; } ;
typedef TYPE_2__ Mpi2SasDevicePage0_t ;
typedef TYPE_3__ Mpi2ConfigReply_t ;


 int KERN_INFO ;
 int MPI2_IOCSTATUS_MASK ;
 int MPI2_IOCSTATUS_SUCCESS ;
 int MPI2_SAS_DEVICE0_FLAGS_DEVICE_PRESENT ;
 int MPI2_SAS_DEVICE0_FLAGS_ENCL_LEVEL_VALID ;
 int MPI2_SAS_DEVICE_PGAD_FORM_HANDLE ;
 int MPI2_SAS_ENCLS0_FLAGS_CHASSIS_SLOT_VALID ;
 struct _sas_device* __mpt3sas_get_sdev_by_addr (struct MPT3SAS_ADAPTER*,void*) ;
 scalar_t__ _scsih_check_access_status (struct MPT3SAS_ADAPTER*,void*,void*,int ) ;
 int _scsih_is_end_device (int) ;
 int _scsih_ublock_io_device (struct MPT3SAS_ADAPTER*,void*) ;
 int ioc_err (struct MPT3SAS_ADAPTER*,char*,void*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int memcpy (char*,int ,int) ;
 scalar_t__ mpt3sas_config_get_sas_device_pg0 (struct MPT3SAS_ADAPTER*,TYPE_3__*,TYPE_2__*,int ,void*) ;
 struct _enclosure_node* mpt3sas_scsih_enclosure_find_by_handle (struct MPT3SAS_ADAPTER*,int) ;
 int sas_device_put (struct _sas_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int starget_printk (int ,struct scsi_target*,char*,void*,void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
_scsih_check_device(struct MPT3SAS_ADAPTER *ioc,
 u64 parent_sas_address, u16 handle, u8 phy_number, u8 link_rate)
{
 Mpi2ConfigReply_t mpi_reply;
 Mpi2SasDevicePage0_t sas_device_pg0;
 struct _sas_device *sas_device;
 struct _enclosure_node *enclosure_dev = ((void*)0);
 u32 ioc_status;
 unsigned long flags;
 u64 sas_address;
 struct scsi_target *starget;
 struct MPT3SAS_TARGET *sas_target_priv_data;
 u32 device_info;

 if ((mpt3sas_config_get_sas_device_pg0(ioc, &mpi_reply, &sas_device_pg0,
     MPI2_SAS_DEVICE_PGAD_FORM_HANDLE, handle)))
  return;

 ioc_status = le16_to_cpu(mpi_reply.IOCStatus) & MPI2_IOCSTATUS_MASK;
 if (ioc_status != MPI2_IOCSTATUS_SUCCESS)
  return;




 if (phy_number != sas_device_pg0.PhyNum)
  return;


 device_info = le32_to_cpu(sas_device_pg0.DeviceInfo);
 if (!(_scsih_is_end_device(device_info)))
  return;

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 sas_address = le64_to_cpu(sas_device_pg0.SASAddress);
 sas_device = __mpt3sas_get_sdev_by_addr(ioc,
     sas_address);

 if (!sas_device)
  goto out_unlock;

 if (unlikely(sas_device->handle != handle)) {
  starget = sas_device->starget;
  sas_target_priv_data = starget->hostdata;
  starget_printk(KERN_INFO, starget,
   "handle changed from(0x%04x) to (0x%04x)!!!\n",
   sas_device->handle, handle);
  sas_target_priv_data->handle = handle;
  sas_device->handle = handle;
  if (le16_to_cpu(sas_device_pg0.Flags) &
       MPI2_SAS_DEVICE0_FLAGS_ENCL_LEVEL_VALID) {
   sas_device->enclosure_level =
    sas_device_pg0.EnclosureLevel;
   memcpy(sas_device->connector_name,
    sas_device_pg0.ConnectorName, 4);
   sas_device->connector_name[4] = '\0';
  } else {
   sas_device->enclosure_level = 0;
   sas_device->connector_name[0] = '\0';
  }

  sas_device->enclosure_handle =
    le16_to_cpu(sas_device_pg0.EnclosureHandle);
  sas_device->is_chassis_slot_valid = 0;
  enclosure_dev = mpt3sas_scsih_enclosure_find_by_handle(ioc,
      sas_device->enclosure_handle);
  if (enclosure_dev) {
   sas_device->enclosure_logical_id =
       le64_to_cpu(enclosure_dev->pg0.EnclosureLogicalID);
   if (le16_to_cpu(enclosure_dev->pg0.Flags) &
       MPI2_SAS_ENCLS0_FLAGS_CHASSIS_SLOT_VALID) {
    sas_device->is_chassis_slot_valid = 1;
    sas_device->chassis_slot =
     enclosure_dev->pg0.ChassisSlot;
   }
  }
 }


 if (!(le16_to_cpu(sas_device_pg0.Flags) &
     MPI2_SAS_DEVICE0_FLAGS_DEVICE_PRESENT)) {
  ioc_err(ioc, "device is not present handle(0x%04x), flags!!!\n",
   handle);
  goto out_unlock;
 }


 if (_scsih_check_access_status(ioc, sas_address, handle,
     sas_device_pg0.AccessStatus))
  goto out_unlock;

 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
 _scsih_ublock_io_device(ioc, sas_address);

 if (sas_device)
  sas_device_put(sas_device);
 return;

out_unlock:
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
 if (sas_device)
  sas_device_put(sas_device);
}
