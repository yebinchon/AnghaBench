
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_phy {size_t number; } ;
struct ex_phy {int attached_dev_type; int attached_sata_dev; } ;
struct TYPE_2__ {struct ex_phy* ex_phy; } ;
struct domain_device {TYPE_1__ ex_dev; struct domain_device* parent; } ;
struct ata_port {struct domain_device* private_data; } ;
struct ata_link {struct ata_port* ap; } ;


 int ECOMM ;
 int ENODEV ;


 int SMP_RESP_FUNC_ACC ;
 int sas_ata_clear_pending (struct domain_device*,struct ex_phy*) ;
 int sas_ex_phy_discover (struct domain_device*,size_t) ;
 struct sas_phy* sas_get_local_phy (struct domain_device*) ;
 int sas_put_local_phy (struct sas_phy*) ;

__attribute__((used)) static int smp_ata_check_ready(struct ata_link *link)
{
 int res;
 struct ata_port *ap = link->ap;
 struct domain_device *dev = ap->private_data;
 struct domain_device *ex_dev = dev->parent;
 struct sas_phy *phy = sas_get_local_phy(dev);
 struct ex_phy *ex_phy = &ex_dev->ex_dev.ex_phy[phy->number];

 res = sas_ex_phy_discover(ex_dev, phy->number);
 sas_put_local_phy(phy);




 if (res == -ECOMM)
  return res;
 if (res != SMP_RESP_FUNC_ACC)
  return 0;

 switch (ex_phy->attached_dev_type) {
 case 128:
  return 0;
 case 129:
  if (ex_phy->attached_sata_dev)
   return sas_ata_clear_pending(dev, ex_phy);

 default:
  return -ENODEV;
 }
}
