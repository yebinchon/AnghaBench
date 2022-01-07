
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ex_phy {int dummy; } ;
struct domain_device {scalar_t__ dev_type; } ;


 scalar_t__ SAS_SATA_PENDING ;
 int sas_get_ata_info (struct domain_device*,struct ex_phy*) ;

__attribute__((used)) static int sas_ata_clear_pending(struct domain_device *dev, struct ex_phy *phy)
{
 int res;


 if (dev->dev_type != SAS_SATA_PENDING)
  return 1;




 res = sas_get_ata_info(dev, phy);
 if (res)
  return 0;
 else
  return 1;
}
