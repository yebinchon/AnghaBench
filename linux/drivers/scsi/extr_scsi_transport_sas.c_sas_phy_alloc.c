
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sas_rphy {int scsi_target_id; } ;
struct TYPE_4__ {int release; int parent; } ;
struct sas_phy {int number; int enabled; TYPE_1__ dev; int port_siblings; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_no; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_name (TYPE_1__*,char*,int ,int,...) ;
 struct sas_rphy* dev_to_rphy (struct device*) ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 int device_initialize (TYPE_1__*) ;
 int get_device (struct device*) ;
 struct sas_phy* kzalloc (int,int ) ;
 int sas_phy_release ;
 scalar_t__ scsi_is_sas_expander_device (struct device*) ;
 int transport_setup_device (TYPE_1__*) ;

struct sas_phy *sas_phy_alloc(struct device *parent, int number)
{
 struct Scsi_Host *shost = dev_to_shost(parent);
 struct sas_phy *phy;

 phy = kzalloc(sizeof(*phy), GFP_KERNEL);
 if (!phy)
  return ((void*)0);

 phy->number = number;
 phy->enabled = 1;

 device_initialize(&phy->dev);
 phy->dev.parent = get_device(parent);
 phy->dev.release = sas_phy_release;
 INIT_LIST_HEAD(&phy->port_siblings);
 if (scsi_is_sas_expander_device(parent)) {
  struct sas_rphy *rphy = dev_to_rphy(parent);
  dev_set_name(&phy->dev, "phy-%d:%d:%d", shost->host_no,
   rphy->scsi_target_id, number);
 } else
  dev_set_name(&phy->dev, "phy-%d:%d", shost->host_no, number);

 transport_setup_device(&phy->dev);

 return phy;
}
