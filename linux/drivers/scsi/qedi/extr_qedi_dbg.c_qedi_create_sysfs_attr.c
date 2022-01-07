
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysfs_bin_attrs {scalar_t__ name; int attr; } ;
struct TYPE_2__ {int kobj; } ;
struct Scsi_Host {TYPE_1__ shost_gendev; } ;


 int pr_err (char*,scalar_t__,int) ;
 int sysfs_create_bin_file (int *,int ) ;

int
qedi_create_sysfs_attr(struct Scsi_Host *shost, struct sysfs_bin_attrs *iter)
{
 int ret = 0;

 for (; iter->name; iter++) {
  ret = sysfs_create_bin_file(&shost->shost_gendev.kobj,
         iter->attr);
  if (ret)
   pr_err("Unable to create sysfs %s attr, err(%d).\n",
          iter->name, ret);
 }
 return ret;
}
