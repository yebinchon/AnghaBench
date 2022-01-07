
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 void* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static inline struct pqi_ctrl_info *shost_to_hba(struct Scsi_Host *shost)
{
 void *hostdata = shost_priv(shost);

 return *((struct pqi_ctrl_info **)hostdata);
}
