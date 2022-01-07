
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct domain_device {int dev_type; int tproto; TYPE_2__* port; } ;
struct TYPE_6__ {int ddb_lock; } ;
struct asd_ha_struct {TYPE_3__ hw_prof; } ;
struct TYPE_5__ {TYPE_1__* ha; } ;
struct TYPE_4__ {struct asd_ha_struct* lldd_ha; } ;




 int asd_init_initiator_ddb (struct domain_device*) ;
 int asd_init_sata_pm_ddb (struct domain_device*) ;
 int asd_init_sata_pm_port_ddb (struct domain_device*) ;
 int asd_init_target_ddb (struct domain_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int asd_dev_found(struct domain_device *dev)
{
 unsigned long flags;
 int res = 0;
 struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;

 spin_lock_irqsave(&asd_ha->hw_prof.ddb_lock, flags);
 switch (dev->dev_type) {
 case 129:
  res = asd_init_sata_pm_ddb(dev);
  break;
 case 128:
  res = asd_init_sata_pm_port_ddb(dev);
  break;
 default:
  if (dev->tproto)
   res = asd_init_target_ddb(dev);
  else
   res = asd_init_initiator_ddb(dev);
 }
 spin_unlock_irqrestore(&asd_ha->hw_prof.ddb_lock, flags);

 return res;
}
