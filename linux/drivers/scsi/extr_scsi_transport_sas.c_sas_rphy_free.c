
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* parent; } ;
struct sas_rphy {int list; struct device dev; } ;
struct sas_host_attrs {int lock; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int parent; } ;


 struct Scsi_Host* dev_to_shost (int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;
 struct sas_host_attrs* to_sas_host_attrs (struct Scsi_Host*) ;
 int transport_destroy_device (struct device*) ;

void sas_rphy_free(struct sas_rphy *rphy)
{
 struct device *dev = &rphy->dev;
 struct Scsi_Host *shost = dev_to_shost(rphy->dev.parent->parent);
 struct sas_host_attrs *sas_host = to_sas_host_attrs(shost);

 mutex_lock(&sas_host->lock);
 list_del(&rphy->list);
 mutex_unlock(&sas_host->lock);

 transport_destroy_device(dev);

 put_device(dev);
}
