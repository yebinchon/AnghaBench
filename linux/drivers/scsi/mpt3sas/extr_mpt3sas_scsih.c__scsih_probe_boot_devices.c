
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct _sas_device {int starget; int list; int sas_address; int sas_address_parent; int handle; } ;
struct _raid_device {int id; } ;
struct _pcie_device {int id; int list; } ;
struct TYPE_8__ {scalar_t__ channel; void* device; } ;
struct TYPE_7__ {scalar_t__ channel; void* device; } ;
struct TYPE_6__ {scalar_t__ channel; void* device; } ;
struct TYPE_5__ {int BiosVersion; } ;
struct MPT3SAS_ADAPTER {int is_driver_loading; scalar_t__ hide_drives; int sas_device_lock; int sas_device_list; int shost; int pcie_device_lock; int pcie_device_list; TYPE_4__ current_boot_device; TYPE_3__ req_alt_boot_device; TYPE_2__ req_boot_device; TYPE_1__ bios_pg3; } ;


 scalar_t__ PCIE_CHANNEL ;
 scalar_t__ RAID_CHANNEL ;
 int _scsih_pcie_device_remove (struct MPT3SAS_ADAPTER*,struct _pcie_device*) ;
 int _scsih_raid_device_remove (struct MPT3SAS_ADAPTER*,struct _raid_device*) ;
 int _scsih_sas_device_remove (struct MPT3SAS_ADAPTER*,struct _sas_device*) ;
 int list_move_tail (int *,int *) ;
 int mpt3sas_transport_port_add (struct MPT3SAS_ADAPTER*,int ,int ) ;
 int mpt3sas_transport_port_remove (struct MPT3SAS_ADAPTER*,int ,int ) ;
 int scsi_add_device (int ,scalar_t__,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_probe_boot_devices(struct MPT3SAS_ADAPTER *ioc)
{
 u32 channel;
 void *device;
 struct _sas_device *sas_device;
 struct _raid_device *raid_device;
 struct _pcie_device *pcie_device;
 u16 handle;
 u64 sas_address_parent;
 u64 sas_address;
 unsigned long flags;
 int rc;
 int tid;


 if (!ioc->bios_pg3.BiosVersion)
  return;

 device = ((void*)0);
 if (ioc->req_boot_device.device) {
  device = ioc->req_boot_device.device;
  channel = ioc->req_boot_device.channel;
 } else if (ioc->req_alt_boot_device.device) {
  device = ioc->req_alt_boot_device.device;
  channel = ioc->req_alt_boot_device.channel;
 } else if (ioc->current_boot_device.device) {
  device = ioc->current_boot_device.device;
  channel = ioc->current_boot_device.channel;
 }

 if (!device)
  return;

 if (channel == RAID_CHANNEL) {
  raid_device = device;
  rc = scsi_add_device(ioc->shost, RAID_CHANNEL,
      raid_device->id, 0);
  if (rc)
   _scsih_raid_device_remove(ioc, raid_device);
 } else if (channel == PCIE_CHANNEL) {
  spin_lock_irqsave(&ioc->pcie_device_lock, flags);
  pcie_device = device;
  tid = pcie_device->id;
  list_move_tail(&pcie_device->list, &ioc->pcie_device_list);
  spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);
  rc = scsi_add_device(ioc->shost, PCIE_CHANNEL, tid, 0);
  if (rc)
   _scsih_pcie_device_remove(ioc, pcie_device);
 } else {
  spin_lock_irqsave(&ioc->sas_device_lock, flags);
  sas_device = device;
  handle = sas_device->handle;
  sas_address_parent = sas_device->sas_address_parent;
  sas_address = sas_device->sas_address;
  list_move_tail(&sas_device->list, &ioc->sas_device_list);
  spin_unlock_irqrestore(&ioc->sas_device_lock, flags);

  if (ioc->hide_drives)
   return;
  if (!mpt3sas_transport_port_add(ioc, handle,
      sas_address_parent)) {
   _scsih_sas_device_remove(ioc, sas_device);
  } else if (!sas_device->starget) {
   if (!ioc->is_driver_loading) {
    mpt3sas_transport_port_remove(ioc,
        sas_address,
        sas_address_parent);
    _scsih_sas_device_remove(ioc, sas_device);
   }
  }
 }
}
