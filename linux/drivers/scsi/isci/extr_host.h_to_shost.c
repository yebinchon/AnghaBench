
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct Scsi_Host* shost; } ;
struct TYPE_4__ {TYPE_1__ core; } ;
struct isci_host {TYPE_2__ sas_ha; } ;
struct Scsi_Host {int dummy; } ;



__attribute__((used)) static inline struct Scsi_Host *to_shost(struct isci_host *ihost)
{
 return ihost->sas_ha.core.shost;
}
