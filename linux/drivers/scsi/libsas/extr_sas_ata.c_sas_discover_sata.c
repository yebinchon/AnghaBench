
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class; } ;
struct domain_device {scalar_t__ dev_type; int rphy; TYPE_1__ sata_dev; } ;


 int ENODEV ;
 scalar_t__ SAS_SATA_PM ;
 int sas_fill_in_rphy (struct domain_device*,int ) ;
 int sas_get_ata_command_set (struct domain_device*) ;
 int sas_notify_lldd_dev_found (struct domain_device*) ;

int sas_discover_sata(struct domain_device *dev)
{
 int res;

 if (dev->dev_type == SAS_SATA_PM)
  return -ENODEV;

 dev->sata_dev.class = sas_get_ata_command_set(dev);
 sas_fill_in_rphy(dev, dev->rphy);

 res = sas_notify_lldd_dev_found(dev);
 if (res)
  return res;

 return 0;
}
