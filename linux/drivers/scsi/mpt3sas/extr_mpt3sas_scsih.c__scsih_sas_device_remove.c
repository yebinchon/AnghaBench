
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct _sas_device {int list; scalar_t__ sas_address; int handle; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; } ;


 int _scsih_display_enclosure_chassis_info (struct MPT3SAS_ADAPTER*,struct _sas_device*,int *,int *) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,int ,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int sas_device_put (struct _sas_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
_scsih_sas_device_remove(struct MPT3SAS_ADAPTER *ioc,
 struct _sas_device *sas_device)
{
 unsigned long flags;

 if (!sas_device)
  return;
 ioc_info(ioc, "removing handle(0x%04x), sas_addr(0x%016llx)\n",
   sas_device->handle, (u64)sas_device->sas_address);

 _scsih_display_enclosure_chassis_info(ioc, sas_device, ((void*)0), ((void*)0));





 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 if (!list_empty(&sas_device->list)) {
  list_del_init(&sas_device->list);
  sas_device_put(sas_device);
 }
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
}
