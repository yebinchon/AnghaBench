
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysfs_bin_attrs {int attr; scalar_t__ name; } ;
struct TYPE_2__ {int kobj; } ;
struct Scsi_Host {TYPE_1__ shost_gendev; } ;


 int sysfs_remove_bin_file (int *,int ) ;

void
qedi_remove_sysfs_attr(struct Scsi_Host *shost, struct sysfs_bin_attrs *iter)
{
 for (; iter->name; iter++)
  sysfs_remove_bin_file(&shost->shost_gendev.kobj, iter->attr);
}
