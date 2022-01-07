
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct sas_phy {TYPE_1__ dev; } ;
struct Scsi_Host {int dummy; } ;


 struct Scsi_Host* dev_to_shost (int ) ;
 void* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static inline void *
phy_to_ioc(struct sas_phy *phy)
{
 struct Scsi_Host *shost = dev_to_shost(phy->dev.parent);
 return shost_priv(shost);
}
