
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sas_address; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct _sas_device {int slot; } ;
struct MPT3SAS_ADAPTER {int sas_device_lock; } ;


 int ENXIO ;
 struct _sas_device* __mpt3sas_get_sdev_by_addr (struct MPT3SAS_ADAPTER*,int ) ;
 struct MPT3SAS_ADAPTER* rphy_to_ioc (struct sas_rphy*) ;
 int sas_device_put (struct _sas_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
_transport_get_bay_identifier(struct sas_rphy *rphy)
{
 struct MPT3SAS_ADAPTER *ioc = rphy_to_ioc(rphy);
 struct _sas_device *sas_device;
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 sas_device = __mpt3sas_get_sdev_by_addr(ioc,
     rphy->identify.sas_address);
 if (sas_device) {
  rc = sas_device->slot;
  sas_device_put(sas_device);
 } else {
  rc = -ENXIO;
 }
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
 return rc;
}
