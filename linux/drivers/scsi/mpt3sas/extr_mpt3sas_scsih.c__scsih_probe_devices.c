
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int IRVolumeMappingFlags; } ;
struct TYPE_3__ {int ProtocolFlags; } ;
struct MPT3SAS_ADAPTER {TYPE_2__ ioc_pg8; scalar_t__ ir_firmware; TYPE_1__ facts; } ;


 int MPI2_IOCFACTS_PROTOCOL_SCSI_INITIATOR ;
 int MPI2_IOCPAGE8_IRFLAGS_LOW_VOLUME_MAPPING ;
 int MPI2_IOCPAGE8_IRFLAGS_MASK_VOLUME_MAPPING_MODE ;
 int _scsih_probe_boot_devices (struct MPT3SAS_ADAPTER*) ;
 int _scsih_probe_pcie (struct MPT3SAS_ADAPTER*) ;
 int _scsih_probe_raid (struct MPT3SAS_ADAPTER*) ;
 int _scsih_probe_sas (struct MPT3SAS_ADAPTER*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void
_scsih_probe_devices(struct MPT3SAS_ADAPTER *ioc)
{
 u16 volume_mapping_flags;

 if (!(ioc->facts.ProtocolFlags & MPI2_IOCFACTS_PROTOCOL_SCSI_INITIATOR))
  return;

 _scsih_probe_boot_devices(ioc);

 if (ioc->ir_firmware) {
  volume_mapping_flags =
      le16_to_cpu(ioc->ioc_pg8.IRVolumeMappingFlags) &
      MPI2_IOCPAGE8_IRFLAGS_MASK_VOLUME_MAPPING_MODE;
  if (volume_mapping_flags ==
      MPI2_IOCPAGE8_IRFLAGS_LOW_VOLUME_MAPPING) {
   _scsih_probe_raid(ioc);
   _scsih_probe_sas(ioc);
  } else {
   _scsih_probe_sas(ioc);
   _scsih_probe_raid(ioc);
  }
 } else {
  _scsih_probe_sas(ioc);
  _scsih_probe_pcie(ioc);
 }
}
