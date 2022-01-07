
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {char const* info; } ;


 struct NCR5380_hostdata* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static const char *NCR5380_info(struct Scsi_Host *instance)
{
 struct NCR5380_hostdata *hostdata = shost_priv(instance);

 return hostdata->info;
}
