
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_5__ {int parent; } ;
struct sas_rphy {TYPE_2__ dev; } ;
struct TYPE_6__ {int parent; } ;
struct sas_phy {TYPE_3__ dev; } ;
struct sas_internal {TYPE_1__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int transportt; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* get_enclosure_identifier ) (struct sas_rphy*,scalar_t__*) ;} ;


 struct sas_phy* dev_to_phy (int ) ;
 struct Scsi_Host* dev_to_shost (int ) ;
 int sprintf (char*,char*,unsigned long long) ;
 int stub1 (struct sas_rphy*,scalar_t__*) ;
 struct sas_internal* to_sas_internal (int ) ;
 struct sas_rphy* transport_class_to_rphy (struct device*) ;

__attribute__((used)) static ssize_t
show_sas_rphy_enclosure_identifier(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct sas_rphy *rphy = transport_class_to_rphy(dev);
 struct sas_phy *phy = dev_to_phy(rphy->dev.parent);
 struct Scsi_Host *shost = dev_to_shost(phy->dev.parent);
 struct sas_internal *i = to_sas_internal(shost->transportt);
 u64 identifier;
 int error;

 error = i->f->get_enclosure_identifier(rphy, &identifier);
 if (error)
  return error;
 return sprintf(buf, "0x%llx\n", (unsigned long long)identifier);
}
