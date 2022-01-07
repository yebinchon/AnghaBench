
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _pcie_device {scalar_t__ access_status; scalar_t__ starget; int id; } ;
struct MPT3SAS_ADAPTER {int is_driver_loading; int shost; } ;


 scalar_t__ MPI26_PCIEDEV0_ASTATUS_DEVICE_BLOCKED ;
 int PCIE_CHANNEL ;
 int _scsih_pcie_device_remove (struct MPT3SAS_ADAPTER*,struct _pcie_device*) ;
 struct _pcie_device* get_next_pcie_device (struct MPT3SAS_ADAPTER*) ;
 int pcie_device_make_active (struct MPT3SAS_ADAPTER*,struct _pcie_device*) ;
 int pcie_device_put (struct _pcie_device*) ;
 int scsi_add_device (int ,int ,int ,int ) ;

__attribute__((used)) static void
_scsih_probe_pcie(struct MPT3SAS_ADAPTER *ioc)
{
 struct _pcie_device *pcie_device;
 int rc;


 while ((pcie_device = get_next_pcie_device(ioc))) {
  if (pcie_device->starget) {
   pcie_device_put(pcie_device);
   continue;
  }
  if (pcie_device->access_status ==
      MPI26_PCIEDEV0_ASTATUS_DEVICE_BLOCKED) {
   pcie_device_make_active(ioc, pcie_device);
   pcie_device_put(pcie_device);
   continue;
  }
  rc = scsi_add_device(ioc->shost, PCIE_CHANNEL,
   pcie_device->id, 0);
  if (rc) {
   _scsih_pcie_device_remove(ioc, pcie_device);
   pcie_device_put(pcie_device);
   continue;
  } else if (!pcie_device->starget) {






   if (!ioc->is_driver_loading) {



    _scsih_pcie_device_remove(ioc, pcie_device);
    pcie_device_put(pcie_device);
    continue;
   }
  }
  pcie_device_make_active(ioc, pcie_device);
  pcie_device_put(pcie_device);
 }
}
