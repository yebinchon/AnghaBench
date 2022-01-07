
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct sas_phy {TYPE_1__ dev; } ;
struct sas_internal {TYPE_2__* f; } ;
struct device {int parent; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_4__ {int (* phy_release ) (struct sas_phy*) ;} ;


 struct sas_phy* dev_to_phy (struct device*) ;
 struct Scsi_Host* dev_to_shost (int ) ;
 int kfree (struct sas_phy*) ;
 int put_device (int ) ;
 int stub1 (struct sas_phy*) ;
 struct sas_internal* to_sas_internal (int ) ;

__attribute__((used)) static void sas_phy_release(struct device *dev)
{
 struct sas_phy *phy = dev_to_phy(dev);
 struct Scsi_Host *shost = dev_to_shost(phy->dev.parent);
 struct sas_internal *i = to_sas_internal(shost->transportt);

 if (i->f->phy_release)
  i->f->phy_release(phy);
 put_device(dev->parent);
 kfree(phy);
}
