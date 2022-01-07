
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _sas_device {int sas_address_parent; int sas_address; int starget; int handle; } ;
struct MPT3SAS_ADAPTER {int is_driver_loading; scalar_t__ hide_drives; } ;


 int _scsih_sas_device_remove (struct MPT3SAS_ADAPTER*,struct _sas_device*) ;
 struct _sas_device* get_next_sas_device (struct MPT3SAS_ADAPTER*) ;
 int mpt3sas_transport_port_add (struct MPT3SAS_ADAPTER*,int ,int ) ;
 int mpt3sas_transport_port_remove (struct MPT3SAS_ADAPTER*,int ,int ) ;
 int sas_device_make_active (struct MPT3SAS_ADAPTER*,struct _sas_device*) ;
 int sas_device_put (struct _sas_device*) ;

__attribute__((used)) static void
_scsih_probe_sas(struct MPT3SAS_ADAPTER *ioc)
{
 struct _sas_device *sas_device;

 if (ioc->hide_drives)
  return;

 while ((sas_device = get_next_sas_device(ioc))) {
  if (!mpt3sas_transport_port_add(ioc, sas_device->handle,
      sas_device->sas_address_parent)) {
   _scsih_sas_device_remove(ioc, sas_device);
   sas_device_put(sas_device);
   continue;
  } else if (!sas_device->starget) {






   if (!ioc->is_driver_loading) {
    mpt3sas_transport_port_remove(ioc,
        sas_device->sas_address,
        sas_device->sas_address_parent);
    _scsih_sas_device_remove(ioc, sas_device);
    sas_device_put(sas_device);
    continue;
   }
  }
  sas_device_make_active(ioc, sas_device);
  sas_device_put(sas_device);
 }
}
